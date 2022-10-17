local function vturmn(suffix)
    local hydro = Hydro();
    local qturbi = hydro:load("qturbi" .. (suffix or ""));
    return max(hydro.min_turbining_outflow - qturbi, 0);
end
return vturmn;