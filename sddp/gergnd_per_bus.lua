local function gergnd_per_bus(i, suffix)
    local renewable_generation_per_bus = require("sddp/renewable_generation_per_bus");

    return renewable_generation_per_bus(i, suffix)
end
return gergnd_per_bus;
