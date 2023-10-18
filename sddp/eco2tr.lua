local function eco2tr(i, suffix)
    local fuel<const> = Fuel(i or 1);
    local thermal<const> = Thermal(i);

    local thermal_generation = thermal:load("gerter" .. (suffix or ""));

    return thermal_generation * fuel.emission_factor;
end
return eco2tr;
