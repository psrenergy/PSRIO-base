local function ghcmgb(suffix)
    local bus = Bus();
    local hydro = Hydro();

    local hydro_generation = hydro:load("gerhid" .. (suffix or ""));
    local bus_marginal_cost = bus:load("cmgbus" .. (suffix or ""));

    return hydro_generation * bus_marginal_cost;
end
return ghcmgb;