local function gicmgb(suffix)
    local powerinjection = require("collection/powerinjection");
    local powinj = powerinjection:load("powinj" .. (suffix or ""));

    local bus = require("collection/bus");
    local cmgbus = bus:load("cmgbus" .. (suffix or ""));
    
    return powinj * cmgbus;
end
return gicmgb;