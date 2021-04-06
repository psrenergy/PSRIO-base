local function mntcir()
    local circuit = require("collection/circuit");
    return ifelse(circuit.status:gt(0.5), 0, 1);
end
return mntcir;