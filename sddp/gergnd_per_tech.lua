local function gergnd_per_tech(suffix)
    local renewable = Renewable();
    local gergnd = renewable:load("gergnd" .. (suffix or ""));

    local general = renewable.tech_type:eq(0);
    local wind = renewable.tech_type:eq(1);
    local solar = renewable.tech_type:eq(2);
    local biomass = renewable.tech_type:eq(3);
    local small_hydro = renewable.tech_type:eq(4);

    return concatenate(
        gergnd:select_agents(general):aggregate_agents(BY_SUM(), "General"),
        gergnd:select_agents(wind):aggregate_agents(BY_SUM(), "Wind"),
        gergnd:select_agents(solar):aggregate_agents(BY_SUM(), "Solar"),
        gergnd:select_agents(biomass):aggregate_agents(BY_SUM(), "Biomass"),
        gergnd:select_agents(small_hydro):aggregate_agents(BY_SUM(), "Small Hydro")
    );
end
return gergnd_per_tech;