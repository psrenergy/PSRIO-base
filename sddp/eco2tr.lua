local function eco2tr(suffix)
    local thermal = Thermal();
    local gerter = thermal:load("gerter" .. (suffix or ""));
    local fuel = Fuel();
    return gerter * fuel.emission_factor;
end
return eco2tr;