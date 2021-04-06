local function enafhd()
    local hydro = require("collection/hydro");
    local inflow = hydro:load("inflow");
    local fprodtac = hydro:load("fprodtac");
    return ifelse(hydro.existing:gt(0.5), 0, inflow * fprodtac):convert("GWh");
end
return enafhd;