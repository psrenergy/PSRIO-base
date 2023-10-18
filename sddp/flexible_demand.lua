local function flexible_demand(i)
    local demand<const> = Demand(i or 1);
    local study<const> = Study(i or 1);
    local system<const> = System(i or 1);

    if study:has_hourly_load() then
        return (demand.inelastic_hour * system.sensitivity):select_agents(demand.is_flexible);
    else
        return (demand.inelastic_block * system.sensitivity):select_agents(demand.is_flexible);
    end
end
return flexible_demand;
