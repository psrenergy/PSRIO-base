local function gbcmgb(i, suffix)
    local battery = Battery(i or 1);
    local bus = Bus(i or 1);

    local battery_generation = battery:load("gerbat" .. (suffix or ""));
    local bus_marginal_cost = bus:load("cmgbus" .. (suffix or ""));

    return (battery_generation * bus_marginal_cost):convert("k$");
end
return gbcmgb;