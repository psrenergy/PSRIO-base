local function frinmx()
    local fuelreservoir = FuelReservoir();
    return min(fuelreservoir.max_injection, fuelreservoir.max_injection_constraint);
end
return frinmx;