local function frinmx()
    local fuelreservoir = require("collection/fuelreservoir");
    return min(fuelreservoir.maxinjection, fuelreservoir.maxinjection_chronological);
end
return frinmx;