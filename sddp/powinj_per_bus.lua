local function powinj_per_bus(i, suffix)
    local power_injection_per_bus = require("sddp/power_injection_per_bus");

    return power_injection_per_bus(i, suffix);
end
return powinj_per_bus;
