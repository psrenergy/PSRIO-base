local function gbcmgs()
    local battery = require("collection/battery");
    local gerbat = battery:load("gerbat");

    local system = require("collection/system");
    local cmgdem = system:load("cmgdem");
    
    return gerbat * cmgdem;
end
return gbcmgs;