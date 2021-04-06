local function gerhid_per_bus(suffix)
    local hydro = require("collection/hydro");
    return hydro:load("gerhid" .. (suffix or "")):aggregate_agents(BY_SUM(), Collection.BUSES);
end
return gerhid_per_bus;