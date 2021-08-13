local function gicmgs(suffix)
    local powerinjection = PowerInjection();
    local powinj = powerinjection:load("powinj" .. (suffix or ""));
    local system = System();
    local cmgdem = system:load("cmgdem" .. (suffix or ""));
    return powinj * cmgdem;
end
return gicmgs;