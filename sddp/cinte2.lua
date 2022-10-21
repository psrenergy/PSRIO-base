local function cinte2(i)
    local thermal = Thermal(i or 1);
    local fuel = Fuel(i or 1);
    return thermal.specific_consumption_segment_2 * (thermal.fuel_transportation_cost + fuel.cost) + thermal.om_cost;
end
return cinte2;
