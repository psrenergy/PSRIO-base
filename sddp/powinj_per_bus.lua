local function powinj_per_bus(i, suffix)
    local powerinjection = PowerInjection(i or 1);
    local powinj = powerinjection:load("powinj" .. (suffix or ""));
    return powinj:aggregate_agents(BY_SUM(), Collection.BUSES);
end
return powinj_per_bus;