local function ggcmgb(i, suffix)
    local bus<const> = Bus(i or 1);
    local renewable<const> = Renewable(i or 1);

    local bus_marginal_cost = bus:load("cmgbus" .. (suffix or ""));
    local renewable_generation = renewable:load("gergnd" .. (suffix or ""));

    return renewable_generation * bus_marginal_cost;
end
return ggcmgb;
