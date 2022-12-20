local function gicmgb(i, suffix)
    local bus = Bus(i or 1);
    local powerinjection = PowerInjection(i or 1);

    local injection = powerinjection:load("powinj" .. (suffix or ""));
    local bus_marginal_cost = bus:load("cmgbus" .. (suffix or ""));

    return injection * bus_marginal_cost;
end
return gicmgb;