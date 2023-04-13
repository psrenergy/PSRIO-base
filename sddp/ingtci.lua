local function ingtci(i, suffix)
    local bus = Bus(i or 1);
    local circuit = Circuit(i or 1);

    local bus_marginal_cost = bus:load("cmgbus" .. (suffix or ""));
    local circuit_flow = circuit:load("cirflw" .. (suffix or "")):convert("MWh");
    local marginal_cost_difference = bus_marginal_cost:circuit_to() - bus_marginal_cost:circuit_from();

    return (marginal_cost_difference * circuit_flow):convert("k$");
end
return ingtci;
