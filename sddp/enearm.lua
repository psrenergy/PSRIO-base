local function enearm(suffix)
    local hydro = Hydro();
    local eneemb = hydro:load("eneemb" .. (suffix or ""));
    return eneemb:aggregate_agents(BY_SUM(), Collection.SYSTEMS);
end
return enearm;