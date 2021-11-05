local function minimum_spillage_percentage_violation_cost(suffix)
    local hydro = Hydro();
    local ucvmnbiosp = hydro:load("ucvmnbiosp" .. (suffix or ""));
    local vimnbiosp = hydro:load("vimnbiosp" .. (suffix or ""));
    return ucvmnbiosp * vimnbiosp;
end
return minimum_spillage_percentage_violation_cost;