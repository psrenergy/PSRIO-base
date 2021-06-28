local function ggcmgs()
    local renewable = require("collection/renewable");
    local gergnd = renewable:load("gergnd");

    local system = require("collection/system");
    local cmgdem = system:load("cmgdem");
    
    return gergnd * cmgdem;
end
return ggcmgs;