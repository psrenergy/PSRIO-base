local function dmcmgs()
    local system = require("collection/system");
    local demand = system:load("demand");
    local cmgdem = system:load("cmgdem");
    return demand * cmgdem;
end
return dmcmgs;