local function gtcmgb(i, suffix)
    local thermal<const> = Thermal(i);
    local bus<const> = Bus(i or 1);

    local thermal_generation = thermal:load("gerter" .. (suffix or ""));
    local bus_marginal_cost = bus:load("cmgbus" .. (suffix or ""));

    return thermal_generation * bus_marginal_cost;
end
return gtcmgb;
