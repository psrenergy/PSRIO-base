local function gerter_running_hours(i, suffix)
    local system = System(i or 1);
    local thermal = Thermal(i or 1);
    local gerter = thermal:load("gerter" .. (suffix or ""));
    return (ifelse(gerter:gt(0), 1, 0) * system.load_level_length):aggregate_blocks(BY_SUM()):convert("hours");
end
return gerter_running_hours;