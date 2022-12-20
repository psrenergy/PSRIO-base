local function gerter_running_hours(i, suffix)
    local system = System(i or 1);
    local thermal = Thermal(i or 1);

    local thermal_generation = thermal:load("gerter" .. (suffix or ""));
    local load_level_length = system.load_level_length;
    local has_generation = thermal_generation:gt(0);

    return (ifelse(has_generation, 1, 0) * load_level_length):aggregate_blocks(BY_SUM()):convert("hours");
end
return gerter_running_hours;