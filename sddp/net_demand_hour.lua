local function net_demand_hour()
    local demand = require("sddp/demand_hour");
    local renewable = Renewable();
    local generation = renewable.hour_generation;
    return demand() - generation:aggregate_agents(BY_SUM(), Collection.RENEWABLE):convert("GWh");
end
return net_demand_hour;