local function enearm(i, suffix)
    local hydro = Hydro(i or 1);
    local eneemb = hydro:load("eneemb" .. (suffix or ""));
    return eneemb:aggregate_agents(BY_SUM(), Collection.SYSTEMS);
end
return enearm;
