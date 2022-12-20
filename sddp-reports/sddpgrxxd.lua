local function sddpgrxxd(i, suffix)
    local battery = Battery(i or 1);
    local hydro = Hydro(i or 1);
    local renewable = Renewable(i or 1);
    local system = System(i or 1);
    local thermal = Thermal(i or 1);

    local hydro_generation = hydro:load("gerhid" .. (suffix or ""));
    local thermal_generation = thermal:load("gerter" .. (suffix or ""));
    local renewable_generation = renewable:load("gergnd" .. (suffix or ""));
    local battery_generation = battery:load("gerbat" .. (suffix or "")):convert("GWh");
    local deficit = system:load("defcit" .. (suffix or ""));

    return concatenate(
        hydro_generation:aggregate_agents(BY_SUM(), "Total Hydro"),
        thermal_generation:aggregate_agents(BY_SUM(), "Total Thermal"),
        renewable_generation:aggregate_agents(BY_SUM(), "Total Renewable"),
        battery_generation:aggregate_agents(BY_SUM(), "Total Battery"),
        deficit:aggregate_agents(BY_SUM(), "Deficit")
    ):aggregate_blocks(BY_SUM()):aggregate_scenarios(BY_AVERAGE());
end
return sddpgrxxd;