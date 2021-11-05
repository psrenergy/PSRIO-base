local function maximum_total_outflow_violation_cost(suffix)
    local hydro = Hydro();
    local uvcxto = hydro:load("uvcxto" .. (suffix or ""));
    local vdefmx = hydro:load("vdefmx" .. (suffix or ""));
    return uvcxto * vdefmx;
end
return maximum_total_outflow_violation_cost;