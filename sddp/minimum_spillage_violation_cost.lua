local function minimum_spillage_violation_cost(suffix)
    local hydro = Hydro();
    local uvcmnsp = hydro:load("uvcmnsp" .. (suffix or ""));
    local vimnsp = hydro:load("vimnsp" .. (suffix or ""));
    return uvcmnsp * vimnsp;
end
return minimum_spillage_violation_cost;