local function maxflw()
    local circuit = require("collection/circuit");
    return circuit.capacity;
end
return maxflw;