local function cinte3()
    local thermal = Thermal();
    local fuel = Fuel();
    return (thermal.cesp3 * (thermal.transport_cost + fuel.cost) + thermal.omcost);
end
return cinte3;