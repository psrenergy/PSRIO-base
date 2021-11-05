local function discharge_rate_violation_cost(suffix)
    local hydro = Hydro();
    local uvcramp = hydro:load("uvcramp" .. (suffix or ""));
    local rampvio = hydro:load("rampvio" .. (suffix or ""));
    return uvcramp * rampvio;
end
return discharge_rate_violation_cost;