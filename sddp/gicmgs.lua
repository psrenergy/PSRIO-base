local function gicmgs(suffix)
    local powerinjection = PowerInjection();
    local system = System();

    local injection = powerinjection:load("powinj" .. (suffix or ""));    
    local load_marginal_cost = system:load("cmgdem" .. (suffix or ""));

    return injection * load_marginal_cost;
end
return gicmgs;