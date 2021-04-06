local function gtcmgb()
    local thermal = require("collection/thermal");
    local bus = require("collection/bus");
    local gerter = thermal:load("gerter");
    local cmgbus = bus:load("cmgbus");
    return gerter * cmgbus;
end
return gtcmgb;