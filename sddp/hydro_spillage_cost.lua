local function hydro_spillage_cost(suffix)
    local hydro = Hydro();
    local qverti = hydro:load("qverti" .. (suffix or ""));
    local cpnspl = hydro:load("cpnspl" .. (suffix or ""));
    return qverti * cpnspl;
end
return hydro_spillage_cost;