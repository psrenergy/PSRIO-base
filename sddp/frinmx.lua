local function frinmx()
    local fuelreservoir = FuelReservoir();
    return min(fuelreservoir.maxinjection, fuelreservoir.maxinjection_chronological);
end
return frinmx;