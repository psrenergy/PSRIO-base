local function dmcmgb(i, suffix)
    local bus = Bus(i or 1);
    local demxbael = bus:load("demxbael" .. (suffix or ""));
    local defbus = bus:load("defbus" .. (suffix or ""));
    local cmgbus = bus:load("cmgbus" .. (suffix or ""));
    return (demxbael - defbus) * cmgbus;
end
return dmcmgb;
