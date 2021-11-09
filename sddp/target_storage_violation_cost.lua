local function target_storage_violation_cost(suffix)
    local hydro = Hydro();
    local target_storage_unit_violation_cost = hydro:load("target_storage_unit_violation_cost" .. (suffix or ""));
    local targetstoragectr = hydro:load("targetstoragectr" .. (suffix or ""));
    return target_storage_unit_violation_cost * targetstoragectr;
end
return target_storage_violation_cost;