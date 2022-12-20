local function cmgdem(i, suffix)
    local bus = Bus(i or 1);

    local bus_marginal_cost = bus:load("cmgbus" .. (suffix or ""));
    local demand_per_bus = bus:load("demxba" .. (suffix or ""));
    local demand_per_system = demand_per_bus:aggregate_agents(BY_SUM(), Collection.SYSTEM);
    local has_demand = demand_per_system:ne(0);

    return ifelse(
        has_demand,
        (bus_marginal_cost * demand_per_bus):aggregate_agents(BY_SUM(), Collection.SYSTEM) / demand_per_system,
        0
    );
end
return cmgdem;