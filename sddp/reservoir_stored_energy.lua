local function reservoir_stored_energy(i, suffix)
    local hydro = Hydro(i or 1);

    local final_storage = hydro:load("volfin" .. (suffix or ""));
    local accumulated_production_factor = hydro:load("fprodtac" .. (suffix or ""));
    local reservoirs = hydro.max_storage:gt(hydro.min_storage);
    local has_hydro = hydro.state:lt(1);

    return ifelse(
        has_hydro,
        max(0, final_storage - hydro.min_storage) * accumulated_production_factor,
        0
    ):select_agents(reservoirs):convert("GWh");
end
return reservoir_stored_energy;
