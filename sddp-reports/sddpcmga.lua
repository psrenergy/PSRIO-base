local function sddpcmga()
    local sddpcmgd = require("sddp-reports/sddpcmgd");
    return sddpcmgd():aggregate_stages(BY_AVERAGE(), Profile.PER_YEAR);
end
return sddpcmga;