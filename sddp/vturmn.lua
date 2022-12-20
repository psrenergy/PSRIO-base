local function vturmn(i, suffix)
    local hydro = Hydro(i or 1);

    local turbined_outflow = hydro:load("qturbi" .. (suffix or ""));

    return max(hydro.min_turbining_outflow - turbined_outflow, 0);
end
return vturmn;