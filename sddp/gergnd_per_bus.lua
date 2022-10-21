local function gergnd_per_bus(i, suffix)
    local renewable = Renewable(i or 1);
    local gergnd = renewable:load("gergnd" .. (suffix or ""));
    return gergnd:aggregate_agents(BY_SUM(), Collection.BUSES);
end
return gergnd_per_bus;