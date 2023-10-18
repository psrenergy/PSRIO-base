local function renewable_generation_per_bus(i, suffix)
    local renewable<const> = Renewable(i or 1);

    local renewable_generation = renewable:load("gergnd" .. (suffix or ""));

    return renewable_generation:aggregate_agents(BY_SUM(), Collection.BUS);
end
return renewable_generation_per_bus;
