local function cinte1()
    local thermal = Thermal();
    local fuel = Fuel();
    return (thermal.specific_consumption_segment_1 * (thermal.fuel_transportation_cost + fuel.cost) + thermal.om_cost);
end
return cinte1;