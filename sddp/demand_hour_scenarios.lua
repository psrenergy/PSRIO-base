local function demand_hour_scenarios(i)
    local demand_segment<const> = DemandSegment(i or 1);
    local demand<const> = Demand(i or 1);
    local system<const> = System(i or 1);

    local demand_sorce = demand.source_type;
    local hourly_scn_demand = demand_sorce:eq(5):remove_zeros():agents();
    local hourly_det_demand = demand_sorce:ne(5):remove_zeros():agents();


    local initial_stage = 1;
    local base_demand = (demand_segment.hour * demand.is_enabled:eq(0):select_stage(initial_stage));
    local base_demand_scn = (demand_segment.hour_scenarios * demand.is_enabled:eq(0):select_stage(initial_stage));
    local final_demand = 0;

    local demamnd_segment_det = base_demand:select_agents(Collection.DEMAND, {hourly_det_demand}):select_agents(Collection.DEMAND_SEGMENT);
    local demamnd_segment_scn = base_demand_scn:select_agents(Collection.DEMAND, {hourly_scn_demand}):select_agents(Collection.DEMAND_SEGMENT);

    if #hourly_scn_demand > 0 and #hourly_det_demand <= 0 then
        final_demand = demamnd_segment_scn;
    elseif #hourly_scn_demand <= 0 and #hourly_det_demand > 0 then
        final_demand = demamnd_segment_det;
    else
        if demamnd_segment_scn:stages() > demamnd_segment_det:stages() then
            demamnd_segment_det = demamnd_segment_scn:select_agent(1):fill(0) + demamnd_segment_det;
        elseif demamnd_segment_scn:stages() < demamnd_segment_det:stages() then
            demamnd_segment_scn = demamnd_segment_det:select_agent(1):fill(0) + demamnd_segment_scn;
        end
        final_demand = demamnd_segment_scn + demamnd_segment_det;
    end
    
    local hourly_demand = (system.sensitivity * final_demand):convert("GWh"):save_cache();

    local rename_labels = {};
    for _, demand_label in ipairs(demand:labels()) do
        local segments_demand = hourly_demand:select_agents(Collection.DEMAND, {demand_label});
        for scn = 1, #segments_demand:agents() do
            table.insert(rename_labels, demand_label .. "(LEV:" .. scn .. ")");
        end
    end

    return hourly_demand:rename_agents(rename_labels);
end
return demand_hour_scenarios;