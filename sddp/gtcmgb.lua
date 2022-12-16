local function gtcmgb(suffix)
    local thermal = Thermal();
    local bus = Bus();

    local thermal_generation = thermal:load("gerter" .. (suffix or ""));
    local bus_marginal_cost = bus:load("cmgbus" .. (suffix or ""));

    return thermal_generation * bus_marginal_cost;
end
return gtcmgb;