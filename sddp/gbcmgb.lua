local function gbcmgb(suffix)
    local battery = Battery();
    local gerbat = battery:load("gerbat" .. (suffix or ""));
    local bus = Bus();
    local cmgbus = bus:load("cmgbus" .. (suffix or ""));
    return gerbat * cmgbus;
end
return gbcmgb;