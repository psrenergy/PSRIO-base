local function sddpcmgd(i, suffix)
    local system = System(i or 1);

    local load_marginal_cost = system:load("cmgdem" .. (suffix or ""));

    return load_marginal_cost:aggregate_blocks(BY_AVERAGE()):aggregate_scenarios(BY_AVERAGE());
end
return sddpcmgd;
