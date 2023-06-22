local function gerhid_per_bus(i, suffix)
    local hydro_generation_per_bus = require("sddp/hydro_generation_per_bus");

    return hydro_generation_per_bus(i, suffix)
end
return gerhid_per_bus;
