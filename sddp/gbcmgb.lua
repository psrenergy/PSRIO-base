local function gbcmgb(i, suffix)
    local battery = Battery(i or 1);
    local bus = Bus(i or 1);
    local gerbat = battery:load("gerbat" .. (suffix or ""));
    local cmgbus = bus:load("cmgbus" .. (suffix or ""));
    return (gerbat * cmgbus):convert("k$");
end
return gbcmgb;