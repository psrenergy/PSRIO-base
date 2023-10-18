local function thermal_operation(i, suffix)
    local thermal<const> = Thermal(i);

    local thermal_generation = thermal:load("gerter" .. (suffix or ""));
    local has_generation = ifelse(thermal_generation:gt(0), 1, 0):force_unit("");

    if has_generation:is_hourly() then
        return has_generation:uncouple_stages_blocks();
    else
        return has_generation:uncouple_stages();
    end
end
return thermal_operation;
