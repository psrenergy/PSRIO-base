local function demand_hour(i)
    local demand<const> = Demand(i or 1);
    local system<const> = System(i or 1);

    local initial_stage = 1;
    return (system.sensitivity * (demand.inelastic_hour * demand.is_enabled:eq(0):select_stage(initial_stage))):convert("GWh");
end
return demand_hour;
