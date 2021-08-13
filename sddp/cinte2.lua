local function cinte2()
    local thermal = Thermal();
    local fuel = Fuel();
    return (thermal.cesp2 * (thermal.transport_cost + fuel.cost) + thermal.omcost);
end
return cinte2;