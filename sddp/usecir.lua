local function usecir(suffix)
    local circuit = Circuit();

    local circuit_flow = circuit:load("cirflw" .. (suffix or ""));

    return (circuit_flow:abs() / circuit.capacity):convert("%");
end
return usecir;