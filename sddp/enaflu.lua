local function enaflu(suffix)
    local hydro = Hydro();

    local inflow = hydro:load("inflow" .. (suffix or ""));
    local accumulated_production_factor = hydro:load("fprodtac" .. (suffix or ""));
    local has_hydro = hydro.state:lt(1);

    return ifelse(
        has_hydro,
        inflow * accumulated_production_factor,
        0
    ):aggregate_agents(BY_SUM(), Collection.SYSTEMS):convert("GWh");
end
return enaflu;