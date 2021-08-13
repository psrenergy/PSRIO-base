local function ggcmgb(suffix)
    local renewable = Renewable();
    local gergnd = renewable:load("gergnd" .. (suffix or ""));
    local bus = Bus();
    local cmgbus = bus:load("cmgbus" .. (suffix or ""));
    return gergnd * cmgbus;
end
return ggcmgb;