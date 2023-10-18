local function thermal_dispatch_factor(i, suffix)
    local thermal<const> = Thermal(i);

    local thermal_generation = thermal:load("gerter" .. (suffix or ""));
    local available_thermal_capacity = thermal:load("potter" .. (suffix or ""));

    return (thermal_generation / available_thermal_capacity):convert("%");
end
return thermal_dispatch_factor;
