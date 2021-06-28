local function enafhd(suffix)
    local hydro = require("collection/hydro");
    local inflow = hydro:load("inflow" .. (suffix or ""));
    local fprodtac = hydro:load("fprodtac" .. (suffix or ""));
    
    return ifelse(hydro.existing:gt(0.5), 0, inflow * fprodtac):convert("GWh");
end
return enafhd;