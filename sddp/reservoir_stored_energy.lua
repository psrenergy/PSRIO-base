local function reservoir_stored_energy(suffix)
    local hydro = Hydro();
    local reservoirs = hydro.max_storage:gt(hydro.min_storage);
    local final_storage = hydro:load("volfin" .. (suffix or ""));
    local accumulated_production_factor = hydro:load("fprodtac" .. (suffix or ""));
    return ifelse(hydro.state:gt(0.5), 0, max(0, final_storage - hydro.min_storage) * accumulated_production_factor):select_agents(reservoirs):convert("GWh");
end
return reservoir_stored_energy;