local function defcit_risk(i, suffix)
    local system<const> = System(i or 1);

    local deficit = system:load("defcit" .. (suffix or ""));
    local deficit_per_year = deficit:aggregate_blocks(BY_SUM()):aggregate_stages(BY_SUM(), Profile.PER_YEAR);
    local has_deficit = deficit_per_year:gt(0);

    return ifelse(has_deficit, 1, 0):aggregate_scenarios(BY_AVERAGE()):convert("%");
end
return defcit_risk;
