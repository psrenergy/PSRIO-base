local function net_demand_hour()
    local demand = require("sddp/demand_hour");
    local renewable_generation = require("sddp/renewable_generation_hour");
    return demand() - renewable_generation():convert("GWh");
end
return net_demand_hour;