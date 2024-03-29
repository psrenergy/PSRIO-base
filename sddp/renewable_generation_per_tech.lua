local function renewable_generation_per_tech(i, suffix)
    local renewable<const> = Renewable(i or 1);

    local general<const> = renewable.tech_type:eq(0);
    local wind<const> = renewable.tech_type:eq(1);
    local solar<const> = renewable.tech_type:eq(2);
    local biomass<const> = renewable.tech_type:eq(3);
    local small_hydro<const> = renewable.tech_type:eq(4);
    local concentrated_solar_power<const> = renewable.tech_type:eq(5);

    local renewable_generation = renewable:load("gergnd" .. (suffix or ""));

    return concatenate(
        renewable_generation:select_agents(general):aggregate_agents(BY_SUM(), "General"),
        renewable_generation:select_agents(wind):aggregate_agents(BY_SUM(), "Wind"),
        renewable_generation:select_agents(solar):aggregate_agents(BY_SUM(), "Solar"),
        renewable_generation:select_agents(biomass):aggregate_agents(BY_SUM(), "Biomass"),
        renewable_generation:select_agents(small_hydro):aggregate_agents(BY_SUM(), "Small Hydro"),
        renewable_generation:select_agents(concentrated_solar_power):aggregate_agents(BY_SUM(), "CSP")
    );
end
return renewable_generation_per_tech;
