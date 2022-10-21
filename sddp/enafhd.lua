local function enafhd(i, suffix)
    local hydro = Hydro(i or 1);
    local inflow = hydro:load("inflow" .. (suffix or ""));
    local fprodtac = hydro:load("fprodtac" .. (suffix or ""));
    return ifelse(hydro.state:gt(0.5), 0, inflow * fprodtac):convert("GWh");
end
return enafhd;
