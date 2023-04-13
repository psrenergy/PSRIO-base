local function thermal_plant_running_hours(i, suffix)
    local system = System(i or 1);
    local thermal = Thermal(i or 1);

    local thermal_generation = thermal:load("gerter" .. (suffix or ""));
    local has_generation = ifelse(thermal_generation:gt(0), 1, 0);

    return (has_generation * system.load_level_length):aggregate_blocks(BY_SUM()):convert("hours");
end
return thermal_plant_running_hours;
