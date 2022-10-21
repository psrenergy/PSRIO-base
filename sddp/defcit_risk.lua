local function defcit_risk(i, suffix)
    local system = System(i or 1);
    local defcit = system:load("defcit" .. (suffix or ""));
    local defcit_per_year = defcit:aggregate_blocks(BY_SUM()):aggregate_stages(BY_SUM(), Profile.PER_YEAR);
    return ifelse(defcit_per_year:gt(0), 1, 0):aggregate_scenarios(BY_AVERAGE()):convert("%");
end
return defcit_risk;
