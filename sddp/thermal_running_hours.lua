local function thermal_running_hours(i, suffix)
    local system<const> = System(i or 1);
    local thermal<const> = Thermal(i);

    local thermal_generation = thermal:load("gerter" .. (suffix or ""));
    local has_generation = ifelse(thermal_generation:gt(0), 1, 0);

    return (has_generation * system.load_level_length):aggregate_blocks(BY_SUM()):convert("hours");
end
return thermal_running_hours;
