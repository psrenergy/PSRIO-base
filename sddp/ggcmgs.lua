local function ggcmgs(suffix)
    local renewable = Renewable();
    local system = System();

    local renewable_generation = renewable:load("gergnd" .. (suffix or ""));
    local load_marginal_cost = system:load("cmgdem" .. (suffix or ""));

    return renewable_generation * load_marginal_cost;
end
return ggcmgs;