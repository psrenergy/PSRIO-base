local function gerhid_per_bus(suffix)
    local hydro = Hydro();

    local hydro_generation = hydro:load("gerhid" .. (suffix or ""));

    return hydro_generation:aggregate_agents(BY_SUM(), Collection.BUSES);
end
return gerhid_per_bus;