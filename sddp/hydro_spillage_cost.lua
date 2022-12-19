local function hydro_spillage_cost(suffix)
    local hydro = Hydro();

    local spilled_outflow = hydro:load("qverti" .. (suffix or ""));
    local spilled_outflow_unit_violation_cost = hydro:load("cpnspl" .. (suffix or ""));

    return spilled_outflow * spilled_outflow_unit_violation_cost;
end
return hydro_spillage_cost;