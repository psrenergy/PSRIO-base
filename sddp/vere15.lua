local function vere15(i, suffix)
    local system<const> = System(i or 1);

    local tolerance<const> = 0.015;

    local deficit = system:load("defcit" .. (suffix or "")):aggregate_blocks(BY_SUM());
    local supplied_demand = system:load("demandel" .. (suffix or "")):aggregate_blocks(BY_SUM());

    local percentage = ifelse(supplied_demand:ne(0.0), deficit / supplied_demand, 0.0);
    local scenarios = ifelse(percentage:gt(tolerance), 1, 0);
    local count = scenarios:aggregate_scenarios(BY_SUM());

    return ifelse(count:ne(0), (percentage * scenarios):aggregate_scenarios(BY_SUM()) / count, 0):convert("%");
end
return vere15;
