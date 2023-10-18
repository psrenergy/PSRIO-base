local function enembp(i, suffix)
    local hydro<const> = Hydro(i or 1);

    local reservoirs = hydro.max_storage:gt(hydro.min_storage);
    local reservoir_stored_energy = hydro:load("eneemb" .. (suffix or ""));
    local max_reservoir_stored_energy = hydro:load("eembmx" .. (suffix or ""));

    return ifelse(
        max_reservoir_stored_energy:ne(0),
        reservoir_stored_energy / max_reservoir_stored_energy,
        0
    ):select_agents(reservoirs):convert("%");
end
return enembp;
