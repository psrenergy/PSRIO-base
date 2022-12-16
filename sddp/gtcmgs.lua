local function gtcmgs(suffix)
    local system = System();
    local thermal = Thermal();

    local thermal_generation = thermal:load("gerter" .. (suffix or ""));
    local load_marginal_cost = system:load("cmgdem" .. (suffix or ""));

    return thermal_generation * load_marginal_cost;
end
return gtcmgs;