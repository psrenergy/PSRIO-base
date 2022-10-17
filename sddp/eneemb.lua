local function eneemb(suffix)
    local hydro = Hydro();
    local reservoirs = hydro.max_storage:gt(hydro.min_storage);
    local volfin = hydro:load("volfin" .. (suffix or ""));
    local fprodtac = hydro:load("fprodtac" .. (suffix or ""));
    return ifelse(hydro.state:gt(0.5), 0, max(0, volfin - hydro.min_storage) * fprodtac):select_agents(reservoirs):convert("GWh");
end
return eneemb;