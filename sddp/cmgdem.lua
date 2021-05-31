local function cmgdem()
    local bus = require("collection/bus");
    local demxba = bus:load("demxba");
    local cmgbus = bus:load("cmgbus");

    local demand_per_system = demxba:aggregate_agents(BY_SUM(), Collection.SYSTEM);
    return ifelse(demand_per_system:eq(0), 0, (cmgbus * demxba):aggregate_agents(BY_SUM(), Collection.SYSTEM) / demand_per_system);
end
return cmgdem;