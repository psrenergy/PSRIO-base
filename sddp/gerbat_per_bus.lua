local function gerbat_per_bus(i, suffix)
    local battery_generation_per_bus = require("sddp/gerbat_per_bus");

    return battery_generation_per_bus(i, suffix);
end
return gerbat_per_bus;
