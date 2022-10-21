local function ggcmgb(i, suffix)
    local bus = Bus(i or 1);
    local renewable = Renewable(i or 1);
    local gergnd = renewable:load("gergnd" .. (suffix or ""));
    local cmgbus = bus:load("cmgbus" .. (suffix or ""));
    return gergnd * cmgbus;
end
return ggcmgb;