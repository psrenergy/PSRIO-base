local function sddpcoped()
    local sddpcope = require("sddp-reports/sddpcope");
    return sddpcope():aggregate_scenarios(BY_AVERAGE());
end
return sddpcoped;