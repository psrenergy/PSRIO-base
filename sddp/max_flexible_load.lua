local function max_flexible_load(i)
    local demand = Demand(i or 1);
    local flexible_demand = require("sddp/flexible_demand");

    return flexible_demand(i) * (1 + demand.max_increase:select_agents(demand.is_flexible));
end
return max_flexible_load;