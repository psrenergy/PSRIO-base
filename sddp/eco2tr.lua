local function eco2tr(i, suffix)
    local fuel = Fuel(i or 1);
    local thermal = Thermal(i or 1);

    local thermal_generation = thermal:load("gerter" .. (suffix or ""));

    return thermal_generation * fuel.emission_factor;
end
return eco2tr;
