local function cinte2()
    local thermal = require("collection/thermal");
    local fuel = require("collection/fuel");
    return (thermal.cesp2 * (thermal.transport_cost + fuel.cost) + thermal.omcost);
end
return cinte2;