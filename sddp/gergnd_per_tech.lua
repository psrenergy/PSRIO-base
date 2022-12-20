local function gergnd_per_tech(i, suffix)
    local renewable = Renewable(i or 1);
    local general = renewable.tech_type:eq(0);
    local wind = renewable.tech_type:eq(1);
    local solar = renewable.tech_type:eq(2);
    local biomass = renewable.tech_type:eq(3);
    local small_hydro = renewable.tech_type:eq(4);

    local renewable_generation = renewable:load("gergnd" .. (suffix or ""));

    return concatenate(
        renewable_generation:select_agents(general):aggregate_agents(BY_SUM(), "General"),
        renewable_generation:select_agents(wind):aggregate_agents(BY_SUM(), "Wind"),
        renewable_generation:select_agents(solar):aggregate_agents(BY_SUM(), "Solar"),
        renewable_generation:select_agents(biomass):aggregate_agents(BY_SUM(), "Biomass"),
        renewable_generation:select_agents(small_hydro):aggregate_agents(BY_SUM(), "Small Hydro")
    );
end
return gergnd_per_tech;