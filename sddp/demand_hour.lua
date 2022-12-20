local function demand_hour(i)
    local demand = Demand(i or 1);
    local system = System(i or 1);

    return (system.sensitivity * demand.inelastic_hour:aggregate_agents(BY_SUM(), Collection.SYSTEM)):convert("GWh");
end
return demand_hour;