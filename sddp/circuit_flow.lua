local function circuit_flow(i, suffix)
    local bus<const> = Bus(i or 1);
    local circuit<const> = Circuit(i or 1);

    local bus_angle = bus:load("angulo" .. (suffix or "")):convert("radian");
    local susceptance = 1 / circuit.reactance:convert("pu");

    return (100 * susceptance * (bus_angle:circuit_from() - bus_angle:circuit_to())):force_unit("MW");
end
return circuit_flow;
