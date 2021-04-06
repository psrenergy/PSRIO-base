local function ghcmgb()
    local hydro = require("collection/hydro");
    local bus = require("collection/bus");
    local gerhid = hydro:load("gerhid");
    local cmgbus = bus:load("cmgbus");
    return gerhid * cmgbus;
end
return ghcmgb;