local function frinmx(i)
    local fuelreservoir<const> = FuelReservoir(i or 1);

    return min(fuelreservoir.max_injection, fuelreservoir.max_injection_constraint);
end
return frinmx;
