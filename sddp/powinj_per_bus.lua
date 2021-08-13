local function powinj_per_bus(suffix)
    local powerinjection = PowerInjection();
    local powinj = powerinjection:load("powinj" .. (suffix or ""));
    return powinj:aggregate_agents(BY_SUM(), Collection.BUSES);
end
return powinj_per_bus;