local function hydro_spillage_cost(i, suffix)
    local hydro = Hydro(i or 1);
    local qverti = hydro:load("qverti" .. (suffix or ""));
    local cpnspl = hydro:load("cpnspl" .. (suffix or ""));
    return qverti * cpnspl;
end
return hydro_spillage_cost;