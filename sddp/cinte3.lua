local function cinte3()
    local thermal = require("collection/thermal");
    local fuel = require("collection/fuel");
    
    return (thermal.cesp3 * (thermal.transport_cost + fuel.cost) + thermal.omcost);
end
return cinte3;