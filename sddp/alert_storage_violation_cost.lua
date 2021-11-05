local function alert_storage_violation_cost(suffix)
    local hydro = Hydro();
    local cvlale = hydro:load("cvlale" .. (suffix or ""));
    local vvaler = hydro:load("vvaler" .. (suffix or ""));
    return cvlale * vvaler;
end
return alert_storage_violation_cost;