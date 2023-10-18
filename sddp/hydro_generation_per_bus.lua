local function hydro_generation_per_bus(i, suffix)
    local hydro<const> = Hydro(i or 1);

    local hydro_generation = hydro:load("gerhid" .. (suffix or ""));

    return hydro_generation:aggregate_agents(BY_SUM(), Collection.BUS);
end
return hydro_generation_per_bus;
