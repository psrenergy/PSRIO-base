local function ghcmgs(suffix)
    local hydro = require("collection/hydro");
    local gerhid = hydro:load("gerhid" .. (suffix or ""));

    local system = require("collection/system");
    local cmgdem = system:load("cmgdem" .. (suffix or ""));
    
    return gerhid * cmgdem;
end
return ghcmgs;