local function thermal_generation_per_bus(i, suffix)
    local thermal<const> = Thermal(i);

    local thermal_generation = thermal:load("gerter" .. (suffix or ""));

    return thermal_generation:aggregate_agents(BY_SUM(), Collection.BUS);
end
return thermal_generation_per_bus;
