local function flexible_demand()
    local demand = Demand();
    local study = Study();
    local system = System();
    if study:is_hourly_load() then
        return (demand.inelastic_hour * system.sensitivity):select_agents(demand.is_flexible);
    else
        return (demand.inelastic_block * system.sensitivity):select_agents(demand.is_flexible);
    end
end
return flexible_demand;