local function gerter_per_bus(i, suffix)
    local thermal = Thermal(i or 1);

    local thermal_generation = thermal:load("gerter" .. (suffix or ""));

    return thermal_generation:aggregate_agents(BY_SUM(), Collection.BUS);
end
return gerter_per_bus;