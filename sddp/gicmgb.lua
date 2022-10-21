local function gicmgb(i, suffix)
    local bus = Bus(i or 1);
    local powerinjection = PowerInjection(i or 1);
    local powinj = powerinjection:load("powinj" .. (suffix or ""));
    local cmgbus = bus:load("cmgbus" .. (suffix or ""));
    return powinj * cmgbus;
end
return gicmgb;