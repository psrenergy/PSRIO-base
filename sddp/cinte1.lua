local function cinte1(i)
    local thermal<const> = Thermal(i);
    local fuel<const> = Fuel(i or 1);

    return thermal.specific_consumption_segment_1 * (thermal.fuel_transportation_cost + fuel.cost) + thermal.om_cost;
end
return cinte1;
