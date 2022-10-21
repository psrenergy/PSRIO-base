local function gicmgs(i, suffix)
    local powerinjection = PowerInjection(i or 1);
    local system = System(i or 1);
    local powinj = powerinjection:load("powinj" .. (suffix or ""));
    local cmgdem = system:load("cmgdem" .. (suffix or ""));
    return powinj * cmgdem;
end
return gicmgs;