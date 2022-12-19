local function net_demand_hour()
    local demand_hour = require("sddp/demand_hour");
    local renewable_generation_hour = require("sddp/renewable_generation_hour");
    return demand_hour() - renewable_generation_hour():convert("GWh");
end
return net_demand_hour;