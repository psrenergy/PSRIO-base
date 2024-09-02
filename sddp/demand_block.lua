local function demand_block(i)
    local demand<const> = Demand(i or 1);
    local system<const> = System(i or 1);
    local study<const>  = Study(i or 1);

    local initial_stage = study:initial_stage();
    return (system.sensitivity * (demand.inelastic_block * demand.is_enabled:eq(0):select_stage(initial_stage)):aggregate_agents(BY_SUM(),
    Collection.SYSTEM)):convert("GWh");
end
return demand_block;
