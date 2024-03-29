local function battery_generation_per_bus(i, suffix)
    local battery<const> = Battery(i or 1);

    local battery_generation = battery:load("gerbat" .. (suffix or ""));

    return battery_generation:aggregate_agents(BY_SUM(), Collection.BUS);
end
return battery_generation_per_bus;
