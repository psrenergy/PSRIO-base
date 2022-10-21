local function fprodtavg(i, suffix)
    local hydro = Hydro(i or 1);
    local state = hydro.state:eq(0);
    local consider_in_stored_and_inflow_energy = 1 - hydro.disconsider_in_stored_and_inflow_energy;
    return (ifelse(state, hydro.mean_production_coefficient, 0) * consider_in_stored_and_inflow_energy):aggregate_topology(BY_SUM(), Topology.STORED_ENERGY_TO);
end
return fprodtavg;
