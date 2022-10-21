local function enaflu(i, suffix)
    local hydro = Hydro(i or 1);
    local inflow = hydro:load("inflow" .. (suffix or ""));
    local fprodtac = hydro:load("fprodtac" .. (suffix or ""));
    return ifelse(hydro.state:gt(0.5), 0, inflow * fprodtac):aggregate_agents(BY_SUM(), Collection.SYSTEMS):convert("GWh");
end
return enaflu;
