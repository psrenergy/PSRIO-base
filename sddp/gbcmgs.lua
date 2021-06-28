local function gbcmgs(suffix)
    local battery = require("collection/battery");
    local gerbat = battery:load("gerbat" .. (suffix or ""));

    local system = require("collection/system");
    local cmgdem = system:load("cmgdem" .. (suffix or ""));
    
    return gerbat * cmgdem;
end
return gbcmgs;