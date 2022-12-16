local function eco2tr(suffix)
    local fuel = Fuel();
    local thermal = Thermal();

    local thermal_generation = thermal:load("gerter" .. (suffix or ""));
    
    return thermal_generation * fuel.emission_factor;
end
return eco2tr;