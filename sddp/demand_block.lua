local function demand_block(i)
    local demand = Demand(i or 1);
    local system = System(i or 1);
    return system.sensitivity * demand.inelastic_block:aggregate_agents(BY_SUM(), Collection.SYSTEM);
end
return demand_block;