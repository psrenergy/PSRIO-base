local function sddpcoped(i)
    local sddpcope = require("sddp-reports/sddpcope");
    return sddpcope(i):aggregate_scenarios(BY_AVERAGE());
end
return sddpcoped;