local function power_injection_per_bus(i, suffix)
    local powerinjection<const> = PowerInjection(i or 1);

    local injection = powerinjection:load("powinj" .. (suffix or ""));

    return injection:aggregate_agents(BY_SUM(), Collection.BUS);
end
return power_injection_per_bus;
