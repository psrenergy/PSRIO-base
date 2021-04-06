local function usecir(suffix)
    local circuit = require("collection/circuit");
    return (circuit:load("cirflw" .. (suffix or "")):abs() / circuit.capacity):convert("%");
end
return usecir;