local function gbcmgb()
    local battery = require("collection/battery");
    local gerbat = battery:load("gerbat");

    local bus = require("collection/bus");
    local cmgbus = bus:load("cmgbus");
    
    return gerbat * cmgbus;
end
return gbcmgb;