#!/usr/bin/env python3
"""LTA DataMall MCP Server — Singapore real-time bus arrivals."""

import os
import asyncio
from datetime import datetime, timezone
from collections import defaultdict

import httpx
import mcp.server.stdio
import mcp.types as types
from mcp.server import Server
from mcp.server.models import InitializationOptions

BASE_URL = "https://datamall2.mytransport.sg/ltaodataservice"
LOAD_MAP = {"SEA": "seats avail", "SDA": "standing", "LSD": "limited standing"}

server = Server("lta-bus")


def _headers() -> dict:
    key = os.environ.get("LTA_API_KEY", "")
    if not key:
        raise RuntimeError("LTA_API_KEY environment variable is not set.")
    return {"AccountKey": key, "accept": "application/json"}


def _fmt_arrival(bus: dict):
    eta = bus.get("EstimatedArrival", "")
    if not eta:
        return None
    try:
        arrival = datetime.fromisoformat(eta)
        mins = int((arrival - datetime.now(timezone.utc)).total_seconds() / 60)
        load = LOAD_MAP.get(bus.get("Load", ""), "")
        mins_str = "Arr" if mins <= 0 else f"{mins} min"
        return f"{mins_str} ({load})" if load else mins_str
    except Exception:
        return eta


def _paginate(endpoint: str) -> list:
    results, skip = [], 0
    with httpx.Client(timeout=30) as client:
        while True:
            resp = client.get(
                f"{BASE_URL}/{endpoint}",
                headers=_headers(),
                params={"$skip": skip},
            )
            resp.raise_for_status()
            batch = resp.json().get("value", [])
            results.extend(batch)
            if len(batch) < 500:
                break
            skip += 500
    return results


@server.list_tools()
async def list_tools() -> list[types.Tool]:
    return [
        types.Tool(
            name="get_bus_arrivals",
            description="Get real-time bus arrival times for a Singapore bus stop.",
            inputSchema={
                "type": "object",
                "properties": {
                    "bus_stop_code": {
                        "type": "string",
                        "description": "5-digit bus stop code (e.g. '83139')",
                    },
                    "service_no": {
                        "type": "string",
                        "description": "Optional bus service number to filter (e.g. '15')",
                    },
                },
                "required": ["bus_stop_code"],
            },
        ),
        types.Tool(
            name="search_bus_stops",
            description="Search for Singapore bus stops by road name or description.",
            inputSchema={
                "type": "object",
                "properties": {
                    "query": {
                        "type": "string",
                        "description": "Keyword — road name, landmark, or area (e.g. 'Clementi')",
                    }
                },
                "required": ["query"],
            },
        ),
        types.Tool(
            name="get_bus_route",
            description="Get all stops along a Singapore bus service route.",
            inputSchema={
                "type": "object",
                "properties": {
                    "service_no": {
                        "type": "string",
                        "description": "Bus service number (e.g. '15', '196E')",
                    }
                },
                "required": ["service_no"],
            },
        ),
    ]


@server.call_tool()
async def call_tool(name: str, arguments: dict) -> list[types.TextContent]:
    if name == "get_bus_arrivals":
        bus_stop_code = arguments["bus_stop_code"]
        service_no = arguments.get("service_no", "")
        params = {"BusStopCode": bus_stop_code}
        if service_no:
            params["ServiceNo"] = service_no
        with httpx.Client(timeout=10) as client:
            resp = client.get(f"{BASE_URL}/BusArrivalv2", headers=_headers(), params=params)
            resp.raise_for_status()
            services = resp.json().get("Services", [])
        if not services:
            text = f"No bus services found for stop {bus_stop_code}."
        else:
            lines = [f"Stop {bus_stop_code}:"]
            for svc in services:
                arrivals = [a for a in [
                    _fmt_arrival(svc.get("NextBus", {})),
                    _fmt_arrival(svc.get("NextBus2", {})),
                    _fmt_arrival(svc.get("NextBus3", {})),
                ] if a]
                lines.append(f"  {svc['ServiceNo']:>4s}: {' | '.join(arrivals) or 'No data'}")
            text = "\n".join(lines)

    elif name == "search_bus_stops":
        query = arguments["query"]
        stops = _paginate("BusStops")
        q = query.lower()
        matches = [
            s for s in stops
            if q in s.get("Description", "").lower() or q in s.get("RoadName", "").lower()
        ]
        if not matches:
            text = f"No bus stops found matching '{query}'."
        else:
            lines = [f"Stops matching '{query}' ({len(matches)} found):"]
            for s in matches[:25]:
                lines.append(f"  {s['BusStopCode']} — {s['Description']} ({s['RoadName']})")
            if len(matches) > 25:
                lines.append(f"  ... and {len(matches) - 25} more.")
            text = "\n".join(lines)

    elif name == "get_bus_route":
        service_no = arguments["service_no"]
        all_routes = _paginate("BusRoutes")
        svc_routes = [r for r in all_routes if r["ServiceNo"] == service_no]
        if not svc_routes:
            text = f"No route found for bus {service_no}."
        else:
            dirs: dict = defaultdict(list)
            for r in svc_routes:
                dirs[r["Direction"]].append(r)
            lines = [f"Bus {service_no}:"]
            for direction, stops in sorted(dirs.items()):
                stops.sort(key=lambda x: x["StopSequence"])
                lines.append(f"\n  Direction {direction}:")
                for s in stops:
                    lines.append(f"    {s['StopSequence']:3d}. Stop {s['BusStopCode']}")
            text = "\n".join(lines)
    else:
        text = f"Unknown tool: {name}"

    return [types.TextContent(type="text", text=text)]


async def main():
    async with mcp.server.stdio.stdio_server() as (read_stream, write_stream):
        await server.run(
            read_stream,
            write_stream,
            InitializationOptions(
                server_name="lta-bus",
                server_version="1.0.0",
                capabilities=server.get_capabilities(
                    notification_options=None,
                    experimental_capabilities={},
                ),
            ),
        )


if __name__ == "__main__":
    asyncio.run(main())
