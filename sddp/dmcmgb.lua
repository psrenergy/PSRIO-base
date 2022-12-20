local function dmcmgb(i, suffix)
    local bus = Bus(i or 1);

    local supplied_demand_per_bus = bus:load("demxbael" .. (suffix or ""));
    local deficit_per_bus = bus:load("defbus" .. (suffix or ""));
    local bus_marginal_cost = bus:load("cmgbus" .. (suffix or ""));

    return (supplied_demand_per_bus - deficit_per_bus) * bus_marginal_cost;
end
return dmcmgb;