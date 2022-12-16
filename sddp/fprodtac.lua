local function fprodtac(suffix)
    local hydro = Hydro();

    local production_factor = hydro:load("fprodt" .. (suffix or ""));
    local consider_in_stored_and_inflow_energy = 1 - hydro.disconsider_in_stored_and_inflow_energy;
    local has_hydro = hydro.state:eq(0);

    return (
        ifelse(
            has_hydro,
            production_factor,
            0) * consider_in_stored_and_inflow_energy
        ):aggregate_topology(BY_SUM(), Topology.TURBINED_TO);
end
return fprodtac;