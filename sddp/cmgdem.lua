local function cmgdem(suffix)
    local bus = Bus();
    local demxba = bus:load("demxba" .. (suffix or ""));
    local cmgbus = bus:load("cmgbus" .. (suffix or ""));

    local demand_per_system = demxba:aggregate_agents(BY_SUM(), Collection.SYSTEM);
    return ifelse(demand_per_system:eq(0), 0, (cmgbus * demxba):aggregate_agents(BY_SUM(), Collection.SYSTEM) / demand_per_system);
end
return cmgdem;