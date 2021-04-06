local function eneemb()
    local hydro = require("collection/hydro");
    local volfin = hydro:load("volfin");
    local fprodtac = hydro:load("fprodtac");
    return ifelse(hydro.existing:gt(0.5), 0, (volfin - hydro.vmin) * fprodtac):convert("GWh");
end
return eneemb;