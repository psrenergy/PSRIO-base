local function vere15(suffix)
    local system = System();
    local demand = Generic();

    local tolerance = 0.015;

    local deficit = system:load("defcit" .. (suffix or "")):aggregate_blocks(BY_SUM());
    local supplied_load = demand:load("demandel" .. (suffix or "")):aggregate_blocks(BY_SUM());

    local percentage = ifelse(supplied_load:ne(0.0), deficit / supplied_load, 0.0);
    local scenarios = ifelse(percentage:gt(tolerance), 1, 0);
    local count = scenarios:aggregate_scenarios(BY_SUM());

    return ifelse(count:ne(0.0), (percentage * scenarios):aggregate_scenarios(BY_SUM()) / count, 0.0):convert("%");
end
return vere15;