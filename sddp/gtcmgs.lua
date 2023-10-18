local function gtcmgs(i, suffix)
    local system<const> = System(i or 1);
    local thermal<const> = Thermal(i or 1);

    local thermal_generation = thermal:load("gerter" .. (suffix or ""));
    local load_marginal_cost = system:load("cmgdem" .. (suffix or ""));

    return thermal_generation * load_marginal_cost;
end
return gtcmgs;
