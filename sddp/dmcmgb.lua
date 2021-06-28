local function dmcmgb(suffix)
    local bus = require("collection/bus");
    local demxbael = bus:load("demxbael" .. (suffix or ""));
    local defbus = bus:load("defbus" .. (suffix or ""));
    local cmgbus = bus:load("cmgbus" .. (suffix or ""));
    
    return (demxbael - defbus) * cmgbus;
end
return dmcmgb;