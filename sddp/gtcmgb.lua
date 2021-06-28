local function gtcmgb(suffix)
    local thermal = require("collection/thermal");
    local gerter = thermal:load("gerter" .. (suffix or ""));

    local bus = require("collection/bus");
    local cmgbus = bus:load("cmgbus" .. (suffix or ""));
    
    return gerter * cmgbus;
end
return gtcmgb;