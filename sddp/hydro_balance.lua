local function hydro_balance(i, suffix)
    local hydro = Hydro(i or 1);

    local inflow = hydro:load("inflow" .. (suffix or "")):convert("hm3");
    local spillage = hydro:load("qverti" .. (suffix or "")):convert("hm3");
    local turbining = hydro:load("qturbi" .. (suffix or "")):convert("hm3");
    local evaporation = hydro:load("qevapo" .. (suffix or "")):convert("hm3");
    local irrigation = hydro:load("qriego" .. (suffix or "")):convert("hm3");
    local final_storage = hydro:load("volfin" .. (suffix or ""));

    local arrived_spillage = spillage:aggregate_topology(BY_SUM(), Topology.SPILLED_FROM, 1, 1);
    local arrived_turbining = turbining:aggregate_topology(BY_SUM(), Topology.TURBINED_FROM, 1, 1);
    local delta_final_storage = final_storage:uncouple_stages(true);

    return inflow + arrived_spillage + arrived_turbining - spillage - turbining - irrigation - evaporation - delta_final_storage;
end
return hydro_balance;