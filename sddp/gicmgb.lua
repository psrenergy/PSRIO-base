local function gicmgb(suffix)
    local powerinjection = PowerInjection();
    local powinj = powerinjection:load("powinj" .. (suffix or ""));
    local bus = Bus();
    local cmgbus = bus:load("cmgbus" .. (suffix or ""));
    return powinj * cmgbus;
end
return gicmgb;