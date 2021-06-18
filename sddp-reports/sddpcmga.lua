local function sddpcmga(suffix)
    local sddpcmgd = require("sddp-reports/sddpcmgd");
    return sddpcmgd(suffix):aggregate_stages(BY_AVERAGE(), Profile.PER_YEAR);
end
return sddpcmga;