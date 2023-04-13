local function ghcmgb(i, suffix)
    local bus = Bus(i or 1);
    local hydro = Hydro(i or 1);

    local hydro_generation = hydro:load("gerhid" .. (suffix or ""));
    local bus_marginal_cost = bus:load("cmgbus" .. (suffix or ""));

    return hydro_generation * bus_marginal_cost;
end
return ghcmgb;
