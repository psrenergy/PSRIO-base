local function gbcmgb(suffix)
    local battery = Battery();
    local bus = Bus();

    local battery_generation = battery:load("gerbat" .. (suffix or ""));
    local bus_marginal_cost = bus:load("cmgbus" .. (suffix or ""));

    return (battery_generation * bus_marginal_cost):convert("k$");
end
return gbcmgb;