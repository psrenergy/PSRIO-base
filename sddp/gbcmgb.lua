local function gbcmgb(suffix)
    local battery = require("collection/battery");
    local gerbat = battery:load("gerbat" .. (suffix or ""));

    local bus = require("collection/bus");
    local cmgbus = bus:load("cmgbus" .. (suffix or ""));
    
    return gerbat * cmgbus;
end
return gbcmgb;