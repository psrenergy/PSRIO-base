local function defcit_risk(suffix)
    local system = require("collection/system");
    local defcit = system:load("defcit" .. (suffix or ""));
    
    return ifelse(defcit:aggregate_blocks(BY_SUM()):aggregate_stages(BY_SUM(), Profile.PER_YEAR):gt(0), 1, 0):aggregate_scenarios(BY_AVERAGE()):convert("%");
end
return defcit_risk;