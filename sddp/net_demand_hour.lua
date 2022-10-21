local function net_demand_hour(i)
    local demand = require("sddp/demand_hour");
    local renewable_generation = require("sddp/renewable_generation_hour");
    return demand(i) - renewable_generation(i):convert("GWh");
end
return net_demand_hour;