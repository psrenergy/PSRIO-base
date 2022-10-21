local function usecir(i, suffix)
    local circuit = Circuit(i or 1);
    local cirflw = circuit:load("cirflw" .. (suffix or ""));
    return (cirflw:abs() / circuit.capacity):convert("%");
end
return usecir;