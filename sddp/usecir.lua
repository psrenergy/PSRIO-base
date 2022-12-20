local function usecir(i, suffix)
    local circuit = Circuit(i or 1);

    local circuit_flow = circuit:load("cirflw" .. (suffix or ""));

    return (circuit_flow:abs() / circuit.capacity):convert("%");
end
return usecir;