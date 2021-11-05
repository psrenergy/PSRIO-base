local function minimum_turbine_violation_cost(suffix)
    local hydro = Hydro();
    local uvcmnt = hydro:load("uvcmnt" .. (suffix or ""));
    local vturmn = require("sddp/vturmn");
    return uvcmnt * vturmn(suffix);
end
return minimum_turbine_violation_cost;