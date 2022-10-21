local function gerhid_per_bus(i, suffix)
    local hydro = Hydro(i or 1);
    local gerhid = hydro:load("gerhid" .. (suffix or ""));
    return gerhid:aggregate_agents(BY_SUM(), Collection.BUSES);
end
return gerhid_per_bus;