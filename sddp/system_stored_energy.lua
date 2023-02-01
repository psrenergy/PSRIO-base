local function system_stored_energy(i, suffix)
    local hydro = Hydro(i or 1);

    local reservoir_stored_energy = hydro:load("eneemb" .. (suffix or ""));

    return reservoir_stored_energy:aggregate_agents(BY_SUM(), Collection.SYSTEM);
end
return system_stored_energy;