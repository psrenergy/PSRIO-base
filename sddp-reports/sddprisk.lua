local function sddprisk(suffix)
    local defcit_risk = require("sddp/defcit_risk");
    return defcit_risk(suffix);
end
return sddprisk;