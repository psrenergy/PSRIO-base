local function losses(i, suffix)
    local circuit = Circuit(i or 1);
    local r =  circuit.resistance:convert("pu");
    local cirflw = circuit:load("cirflw" .. (suffix or ""));
    local f = (cirflw / 100):force_unit("pu");
    return r * (f^2);
end
return losses;