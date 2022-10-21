local function sddpgrxxd(i, suffix)
    local hydro = Hydro(i or 1);
    local gerhid = hydro:load("gerhid" .. (suffix or ""));

    local thermal = Thermal(i or 1);
    local gerter = thermal:load("gerter" .. (suffix or ""));
    
    local renewable = Renewable(i or 1);
    local gergnd = renewable:load("gergnd" .. (suffix or ""));
    
    local battery = Battery(i or 1);
    local gerbat = battery:load("gerbat" .. (suffix or ""));

    local system = System(i or 1);
    local defcit = system:load("defcit" .. (suffix or ""));

    return concatenate(
        gerhid:aggregate_agents(BY_SUM(), "Total Hydro"),
        gerter:aggregate_agents(BY_SUM(), "Total Thermal"),
        gergnd:aggregate_agents(BY_SUM(), "Total Renewable"),
        gerbat:aggregate_agents(BY_SUM(), "Total Battery"):convert("GWh"),
        defcit:aggregate_agents(BY_SUM(), "Deficit")
    ):aggregate_blocks(BY_SUM()):aggregate_scenarios(BY_AVERAGE());
end
return sddpgrxxd;