local function pothid(suffix)
    local hydro = Hydro();
    local fprodt = hydro:load("fprodt" .. (suffix or ""));
    return ifelse(hydro.state:gt(0.5), 0, min(hydro.max_turbining_outflow * fprodt, hydro.max_generation_available));
end
return pothid;