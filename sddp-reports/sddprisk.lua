local function sddprisk(i, suffix)
    local defcit_risk = require("sddp/defcit_risk");
    return defcit_risk(i, suffix);
end
return sddprisk;