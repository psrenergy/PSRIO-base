local function gicmgb()
    local powerinjection = require("collection/powerinjection");
    local powinj = powerinjection:load("powinj");

    local bus = require("collection/bus");
    local cmgbus = bus:load("cmgbus");
    
    return powinj * cmgbus;
end
return gicmgb;