local function minimum_total_outflow_violation_cost(suffix)
    local hydro = Hydro();
    local uvcmto = hydro:load("uvcmto" .. (suffix or ""));
    local vdefmn = hydro:load("vdefmn" .. (suffix or ""));
    return uvcmto * vdefmn;
end
return minimum_total_outflow_violation_cost;