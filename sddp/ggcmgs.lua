local function ggcmgs(i, suffix)
    local renewable<const> = Renewable(i or 1);
    local system<const> = System(i or 1);

    local renewable_generation = renewable:load("gergnd" .. (suffix or ""));
    local load_marginal_cost = system:load("cmgdem" .. (suffix or ""));

    return renewable_generation * load_marginal_cost;
end
return ggcmgs;
