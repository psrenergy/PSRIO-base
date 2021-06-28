local function gtcmgs(suffix)
    local thermal = require("collection/thermal");
    local gerter = thermal:load("gerter" .. (suffix or ""));

    local system = require("collection/system");
    local cmgdem = system:load("cmgdem" .. (suffix or ""));
    
    return gerter * cmgdem;
end
return gtcmgs;