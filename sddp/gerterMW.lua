local function gerterMW(suffix)
    local thermal = Thermal();

    local thermal_generation = thermal:load("gerter" .. (suffix or ""));

    return thermal_generation:convert("MW");
end
return gerterMW;