local function mntcir(i)
    local circuit = Circuit(i or 1);
    return ifelse(circuit.status:gt(0.5), 0, 1);
end
return mntcir;