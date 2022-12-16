local function enearm(suffix)
    local system_stored_energy = require("sddp/system_stored_energy");
    return system_stored_energy(suffix);
end
return enearm;