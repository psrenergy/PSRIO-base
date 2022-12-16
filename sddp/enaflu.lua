local function enaflu(suffix)
    local hydro = Hydro();
    local inflow = hydro:load("inflow" .. (suffix or ""));
    local accumulated_production_factor = hydro:load("fprodtac" .. (suffix or ""));
    return ifelse(hydro.state:gt(0.5), 0, inflow * accumulated_production_factor):aggregate_agents(BY_SUM(), Collection.SYSTEMS):convert("GWh");
end
return enaflu;