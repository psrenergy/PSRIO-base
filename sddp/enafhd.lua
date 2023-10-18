local function enafhd(i, suffix)
    local hydro<const> = Hydro(i or 1);

    local inflow = hydro:load("inflow" .. (suffix or ""));
    local accumulated_production_factor = hydro:load("fprodtac" .. (suffix or ""));
    local has_hydro = hydro.state:lt(1);

    return ifelse(
        has_hydro,
        inflow * accumulated_production_factor,
        0
    ):convert("GWh");
end
return enafhd;
