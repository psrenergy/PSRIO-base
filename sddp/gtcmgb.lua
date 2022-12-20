local function gtcmgb(i, suffix)
    local thermal = Thermal(i or 1);
    local bus = Bus(i or 1);

    local thermal_generation = thermal:load("gerter" .. (suffix or ""));
    local bus_marginal_cost = bus:load("cmgbus" .. (suffix or ""));

    return thermal_generation * bus_marginal_cost;
end
return gtcmgb;