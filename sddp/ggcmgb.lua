local function ggcmgb()
    local renewable = require("collection/renewable");
    local gergnd = renewable:load("gergnd");
    
    local bus = require("collection/bus");
    local cmgbus = bus:load("cmgbus");

    return gergnd * cmgbus;
end
return ggcmgb;