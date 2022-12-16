local function mntcir()
    local circuit = Circuit();
    local has_circuit = circuit.state:lt(1);
    return ifelse(has_circuit, 1, 0);
end
return mntcir;