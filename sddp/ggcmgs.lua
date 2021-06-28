local function ggcmgs(suffix)
    local renewable = require("collection/renewable");
    local gergnd = renewable:load("gergnd" .. (suffix or ""));

    local system = require("collection/system");
    local cmgdem = system:load("cmgdem" .. (suffix or ""));
    
    return gergnd * cmgdem;
end
return ggcmgs;