local function enembp(suffix)
    local hydro = Hydro();
    local reservoirs = hydro.vmax:gt(hydro.vmin);
    local eneemb = hydro:load("eneemb" .. (suffix or ""));
    local eembmx = hydro:load("eembmx" .. (suffix or ""));
    return ifelse(eembmx:ne(0), eneemb / eembmx, 0):select_agents(reservoirs):convert("%");
end
return enembp;