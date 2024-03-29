local function gerterMW(i, suffix)
    local thermal<const> = Thermal(i or 1);

    local thermal_generation = thermal:load("gerter" .. (suffix or ""));

    return thermal_generation:convert("MW");
end
return gerterMW;
