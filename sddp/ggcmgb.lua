local function ggcmgb(suffix)
    local bus = Bus();
    local renewable = Renewable();

    local bus_marginal_cost = bus:load("cmgbus" .. (suffix or ""));
    local renewable_generation = renewable:load("gergnd" .. (suffix or ""));

    return renewable_generation * bus_marginal_cost;
end
return ggcmgb;