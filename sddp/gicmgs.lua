local function gicmgs(suffix)
    local powerinjection = require("collection/powerinjection");
    local powinj = powerinjection:load("powinj" .. (suffix or ""));
    
    local system = require("collection/system");
    local cmgdem = system:load("cmgdem" .. (suffix or ""));
    
    return powinj * cmgdem;
end
return gicmgs;