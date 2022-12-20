local function min_flexible_load(i)
    local demand = Demand(i or 1);
    local flexible_demand = require("sddp/flexible_demand");

    return flexible_demand(i) * (1 - demand.max_decrease:select_agents(demand.is_flexible));
end
return min_flexible_load;