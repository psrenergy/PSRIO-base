local function gicmgs()
    local powerinjection = require("collection/powerinjection");
    local powinj = powerinjection:load("powinj");
    
    local system = require("collection/system");
    local cmgdem = system:load("cmgdem");
    
    return powinj * cmgdem;
end
return gicmgs;