local function losses(suffix)
    local circuit = Circuit();

    local circuit_flow = circuit:load("cirflw" .. (suffix or ""));
    local r = circuit.resistance:convert("pu");
    local f = (circuit_flow / 100):force_unit("pu");

    return r * (f^2);
end
return losses;