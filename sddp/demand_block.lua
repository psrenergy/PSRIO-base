local function demand_block()
    local demand = Demand();
    return (System().sensitivity * demand.inelastic_block:aggregate_agents(BY_SUM(), Collection.SYSTEM));
end
return demand_block;