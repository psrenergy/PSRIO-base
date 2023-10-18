local function fuelpr(i)
    local fuel<const> = Fuel(i or 1);

    return fuel.cost;
end
return fuelpr;
