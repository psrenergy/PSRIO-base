local function usecir(i, suffix)
    local circuit_loading = require("sddp/circuit_loading");

    return circuit_loading(i, suffix);
end
return usecir;
