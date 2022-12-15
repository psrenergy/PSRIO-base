local function mntcir()
    local circuit = Circuit();
    return ifelse(circuit.state:gt(0.5), 0, 1);
end
return mntcir;