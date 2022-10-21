local function sddpcmga(i, suffix)
    local sddpcmgd = require("sddp-reports/sddpcmgd");
    return sddpcmgd(i, suffix):aggregate_stages(BY_AVERAGE(), Profile.PER_YEAR);
end
return sddpcmga;