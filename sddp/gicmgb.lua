local function gicmgb(suffix)
    local bus = Bus();
    local powerinjection = PowerInjection();

    local injection = powerinjection:load("powinj" .. (suffix or ""));
    local bus_marginal_cost = bus:load("cmgbus" .. (suffix or ""));

    return injection * bus_marginal_cost;
end
return gicmgb;