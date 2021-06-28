local function gtcmgs()
    local thermal = require("collection/thermal");
    local gerter = thermal:load("gerter");

    local system = require("collection/system");
    local cmgdem = system:load("cmgdem");
    
    return gerter * cmgdem;
end
return gtcmgs;