local function eco2tr(i, suffix)
    local fuel = Fuel(i or 1);
    local thermal = Thermal(i or 1);
    local gerter = thermal:load("gerter" .. (suffix or ""));
    return gerter * fuel.emission_factor;
end
return eco2tr;
