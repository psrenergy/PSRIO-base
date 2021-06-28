local function ggcmgb(suffix)
    local renewable = require("collection/renewable");
    local gergnd = renewable:load("gergnd" .. (suffix or ""));
    
    local bus = require("collection/bus");
    local cmgbus = bus:load("cmgbus" .. (suffix or ""));

    return gergnd * cmgbus;
end
return ggcmgb;