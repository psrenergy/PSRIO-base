local function dmcmgs(suffix)
    local system = require("collection/system");
    local demand = system:load("demand" .. (suffix or ""));
    local cmgdem = system:load("cmgdem" .. (suffix or ""));
    
    return demand * cmgdem;
end
return dmcmgs;