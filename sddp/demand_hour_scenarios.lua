local function demand_block_scenarios(i)
    local demand_segment<const> = DemandSegment(i or 1);
    local demand<const> = Demand(i or 1);
    local system<const> = System(i or 1);

    local initial_stage = 1;
    local block_demand = (system.sensitivity * (demand_segment.hour * demand.is_enabled:eq(0):select_stage(initial_stage))):convert("GWh"):save_cache();

    local rename_labels = {};
    for _, demand_label in ipairs(demand:labels()) do
        local segments_demand = block_demand:select_agents(Collection.DEMAND, {demand_label});
        for scn = 1, #segments_demand:agents() do
            table.insert(rename_labels, demand_label .. "(SCN:" .. scn .. ")");
        end
    end

    return block_demand:rename_agents(rename_labels);
end
return demand_block_scenarios;
