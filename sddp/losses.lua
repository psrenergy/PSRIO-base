local function losses(suffix)
    local circuit = Circuit();
    local r =  circuit.resistance:convert("pu");
    local f = (circuit:load("cirflw") / 100):force_unit("pu");
    return r * (f^2);
end
return losses;

