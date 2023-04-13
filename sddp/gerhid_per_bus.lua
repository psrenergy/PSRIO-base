local function gerhid_per_bus(i, suffix)
    local hydro = Hydro(i or 1);

    local hydro_generation = hydro:load("gerhid" .. (suffix or ""));

    return hydro_generation:aggregate_agents(BY_SUM(), Collection.BUS);
end
return gerhid_per_bus;
