local function eneemb(suffix)
    local reservoir_stored_energy = require("sddp/reservoir_stored_energy");
    return reservoir_stored_energy(suffix);
end
return eneemb;