local function flexible_load_curtailment_cost(i, suffix)
    local demand<const> = Demand(i or 1);

    local flexible_load_curtailment = demand:load("lshcurt" .. (suffix or ""));

    return (demand.curtailment_cost * flexible_load_curtailment):select_agents(demand.is_flexible);
end
return flexible_load_curtailment_cost;
