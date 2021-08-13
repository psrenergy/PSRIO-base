local function cinte1()
    local thermal = Thermal();
    local fuel = Fuel();
    return (thermal.cesp1 * (thermal.transport_cost + fuel.cost) + thermal.omcost);
end
return cinte1;