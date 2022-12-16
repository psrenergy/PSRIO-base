local function powinj_per_bus(suffix)
    local powerinjection = PowerInjection();

    local injection = powerinjection:load("powinj" .. (suffix or ""));

    return injection:aggregate_agents(BY_SUM(), Collection.BUSES);
end
return powinj_per_bus;