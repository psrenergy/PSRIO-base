local function usecir(suffix)
    local circuit = Circuit();
    local cirflw = circuit:load("cirflw" .. (suffix or ""));
    return (cirflw:abs() / circuit.capacity):convert("%");
end
return usecir;