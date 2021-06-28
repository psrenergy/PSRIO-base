local function ghcmgs()
    local hydro = require("collection/hydro");
    local gerhid = hydro:load("gerhid");

    local system = require("collection/system");
    local cmgdem = system:load("cmgdem");
    
    return gerhid * cmgdem;
end
return ghcmgs;