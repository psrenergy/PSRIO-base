local function sddpcmgd(suffix)
    local system = System();

    local load_marginal_cost = system:load("cmgdem" .. (suffix or ""));

    return load_marginal_cost:aggregate_blocks(BY_AVERAGE()):aggregate_scenarios(BY_AVERAGE());
end
return sddpcmgd;