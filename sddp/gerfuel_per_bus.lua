local function gerfuel_per_bus(suffix)
    local fuelconsumption = require("collection/fuelconsumption");
    return fuelconsumption:load("gerter" .. (suffix or "")):aggregate_agents(BY_SUM(), Collection.BUSES);
end
return gerfuel_per_bus;