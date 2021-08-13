local function enaflu(suffix)
    local hydro = Hydro();
    local inflow = hydro:load("inflow" .. (suffix or ""));
    local fprodtac = hydro:load("fprodtac" .. (suffix or ""));
    return ifelse(hydro.existing:gt(0.5), 0, inflow * fprodtac):aggregate_agents(BY_SUM(), Collection.SYSTEMS):convert("GWh");
end
return enaflu;