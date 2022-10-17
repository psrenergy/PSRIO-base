local function losses(suffix)
    local circuit = Circuit();
    local r =  circuit.resistance:convert("pu");
    local cirflw = circuit:load("cirflw" .. (suffix or ""));
    local f = (cirflw / 100):force_unit("pu");
    return r * (f^2);
end
return losses;