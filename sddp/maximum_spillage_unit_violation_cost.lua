local function maximum_spillage_unit_violation_cost(suffix)
    local hydro = Hydro();
    local uvcmxsp = hydro:load("uvcmxsp" .. (suffix or ""));
    local vimxsp = hydro:load("vimxsp" .. (suffix or ""));
    return uvcmxsp * vimxsp;
end
return maximum_spillage_unit_violation_cost;