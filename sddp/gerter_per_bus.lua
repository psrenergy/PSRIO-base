local function gerter_per_bus(i, suffix)
    local thermal_generation_per_bus = require("sddp/thermal_generation_per_bus");

    return thermal_generation_per_bus(i, suffix);
end
return gerter_per_bus;
