local function usecir(suffix)
    local circuit = require("collection/circuit");
    local cirflw = circuit:load("cirflw" .. (suffix or ""));
    
    return (cirflw:abs() / circuit.capacity):convert("%");
end
return usecir;