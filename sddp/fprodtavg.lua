local function fprodtavg(i)
    local hydro = Hydro(i or 1);

    local consider_in_stored_and_inflow_energy = 1 - hydro.disconsider_in_stored_and_inflow_energy;
    local has_hydro = hydro.state:eq(0);

    return (
        ifelse(
            has_hydro,
            hydro.mean_production_coefficient,
            0
        ) * consider_in_stored_and_inflow_energy
    ):aggregate_topology(BY_SUM(), Topology.STORED_ENERGY_TO);
end
return fprodtavg;