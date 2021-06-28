local function ghcmgb(suffix)
    local hydro = require("collection/hydro");
    local gerhid = hydro:load("gerhid" .. (suffix or ""));

    local bus = require("collection/bus");
    local cmgbus = bus:load("cmgbus" .. (suffix or ""));
    
    return gerhid * cmgbus;
end
return ghcmgb;