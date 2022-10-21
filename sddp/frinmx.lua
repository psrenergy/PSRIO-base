local function frinmx(i)
    local fuelreservoir = FuelReservoir(i or 1);
    return min(fuelreservoir.maxinjection, fuelreservoir.maxinjection_chronological);
end
return frinmx;