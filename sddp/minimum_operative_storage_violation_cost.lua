local function minimum_operative_storage_violation_cost(suffix)
    local hydro = Hydro();
    local cvlmin = hydro:load("cvlmin" .. (suffix or ""));
    local vvolmn = hydro:load("vvolmn" .. (suffix or ""));
    return cvlmin * vvolmn;
end
return minimum_operative_storage_violation_cost;