local function eco2tr()
    local thermal = Thermal();
    local gerter = thermal:load("gerter");
    
    local fuel = Fuel();
    local emission_factor = fuel.emission_factor;

    return gerter * emission_factor;
end
return eco2tr;