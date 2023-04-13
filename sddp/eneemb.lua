local function eneemb(i, suffix)
    local reservoir_stored_energy = require("sddp/reservoir_stored_energy");

    return reservoir_stored_energy(i, suffix);
end
return eneemb;
