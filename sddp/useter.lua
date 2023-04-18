local function useter(i, suffix)
    local thermal_dispatch_factor = require("sddp/thermal_dispatch_factor");

    return thermal_dispatch_factor(i, suffix);
end
return useter;
