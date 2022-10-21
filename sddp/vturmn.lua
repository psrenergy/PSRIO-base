local function vturmn(i, suffix)
    local hydro = Hydro(i or 1);
    local qturbi = hydro:load("qturbi" .. (suffix or ""));
    return max(hydro.min_turbining_outflow - qturbi, 0);
end
return vturmn;