local function sddpgrxxd(suffix)
    local battery = Battery();
    local hydro = Hydro();
    local renewable = Renewable();
    local system = System();
    local thermal = Thermal();

    local hydro_generation = hydro:load("gerhid" .. (suffix or ""));
    local thermal_generation = thermal:load("gerter" .. (suffix or ""));
    local renewable_generation = renewable:load("gergnd" .. (suffix or ""));
    local battery_generation = battery:load("gerbat" .. (suffix or ""));
    local deficit = system:load("defcit" .. (suffix or ""));

    return concatenate(
        hydro_generation:aggregate_agents(BY_SUM(), "Total Hydro"):aggregate_blocks(BY_SUM()):aggregate_scenarios(BY_AVERAGE()),
        thermal_generation:aggregate_agents(BY_SUM(), "Total Thermal"):aggregate_blocks(BY_SUM()):aggregate_scenarios(BY_AVERAGE()),
        renewable_generation:aggregate_agents(BY_SUM(), "Total Renewable"):aggregate_blocks(BY_SUM()):aggregate_scenarios(BY_AVERAGE()),
        battery_generation:aggregate_agents(BY_SUM(), "Total Battery"):aggregate_blocks(BY_SUM()):aggregate_scenarios(BY_AVERAGE()):convert("GWh"),
        deficit:aggregate_agents(BY_SUM(), "Deficit"):aggregate_blocks(BY_SUM()):aggregate_scenarios(BY_AVERAGE())
    );
end
return sddpgrxxd;