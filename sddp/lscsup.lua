local function lscsup()
    local circuitssum = require("collection/circuitssum");
    return circuitssum.ub;
end
return lscsup;