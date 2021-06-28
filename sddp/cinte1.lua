local function cinte1()
    local thermal = require("collection/thermal");
    local fuel = require("collection/fuel");
    
    return (thermal.cesp1 * (thermal.transport_cost + fuel.cost) + thermal.omcost);
end
return cinte1;