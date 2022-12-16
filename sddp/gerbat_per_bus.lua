local function gerbat_per_bus(suffix)
    local battery = Battery();

    local battery_generation = battery:load("gerbat" .. (suffix or ""));

    return battery_generation:aggregate_agents(BY_SUM(), Collection.BUSES);
end
return gerbat_per_bus;