local function gerhid_per_bus(suffix)
    local hydro = require("collection/hydro");
    local gerhid = hydro:load("gerhid" .. (suffix or ""));
    
    return gerhid:aggregate_agents(BY_SUM(), Collection.BUSES);
end
return gerhid_per_bus;