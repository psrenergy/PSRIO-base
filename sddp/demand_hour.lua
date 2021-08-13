local function demand_hour()
    local demand = Demand();
    return (System().sensitivity * demand.inelastic_hour:aggregate_agents(BY_SUM(), Collection.SYSTEM)):convert("GWh");
end
return demand_hour;