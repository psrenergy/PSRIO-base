local function gicmgs(i, suffix)
    local powerinjection = PowerInjection(i or 1);
    local system = System(i or 1);

    local injection = powerinjection:load("powinj" .. (suffix or ""));
    local load_marginal_cost = system:load("cmgdem" .. (suffix or ""));

    return injection * load_marginal_cost;
end
return gicmgs;
