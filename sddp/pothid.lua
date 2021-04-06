local function pothid()
    local hydro = require("collection/hydro");
    local fprodt = hydro:load("fprodt");
    return ifelse(hydro.existing:gt(0.5), 0, min(hydro.qmax * fprodt, hydro.capacity_maintenance));
end
return pothid;