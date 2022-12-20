local function pothid(i, suffix)
    local hydro = Hydro(i or 1);

    local production_factor = hydro:load("fprodt" .. (suffix or ""));
    local has_hydro = hydro.state:lt(1);

    return ifelse(
        has_hydro,
        min(hydro.max_turbining_outflow * production_factor, hydro.max_generation_available),
        0
    );
end
return pothid;