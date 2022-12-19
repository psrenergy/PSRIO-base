local function min_flexible_load()
    local demand = Demand();
    local flexible_demand = require("sddp/flexible_demand");

    return flexible_demand() * (1 - demand.max_decrease:select_agents(demand.is_flexible));
end
return min_flexible_load;