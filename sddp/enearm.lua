local function enearm(i, suffix)
    local system_stored_energy = require("sddp/system_stored_energy");

    return system_stored_energy(i, suffix);
end
return enearm;
