local function fprodtac(suffix)
    local hydro = Hydro();
    local fprodt = hydro:load("fprodt" .. (suffix or ""));
    local state = hydro.state:eq(0);
    local consider_in_stored_and_inflow_energy = 1 - hydro.disconsider_in_stored_and_inflow_energy;
    return (ifelse(state, fprodt, 0) * consider_in_stored_and_inflow_energy):aggregate_topology(BY_SUM(), Topology.TURBINED_TO);
end
return fprodtac;