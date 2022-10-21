local function gerfuel_per_bus(i, suffix)
    local fuelconsumption = FuelConsumption(i or 1);
    local gerfuel = fuelconsumption:load("gerter" .. (suffix or ""));
    return gerfuel:aggregate_agents(BY_SUM(), Collection.BUSES);
end
return gerfuel_per_bus;