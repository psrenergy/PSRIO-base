local function system_stored_energy(suffix)
    local hydro = Hydro();

    local reservoir_stored_energy = hydro:load("eneemb" .. (suffix or ""));

    return reservoir_stored_energy:aggregate_agents(BY_SUM(), Collection.SYSTEMS);
end
return system_stored_energy;