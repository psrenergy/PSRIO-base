local function pothid(suffix)
    local hydro = Hydro();
    local fprodt = hydro:load("fprodt" .. (suffix or ""));
    return ifelse(hydro.existing:gt(0.5), 0, min(hydro.qmax * fprodt, hydro.capacity_maintenance));
end
return pothid;