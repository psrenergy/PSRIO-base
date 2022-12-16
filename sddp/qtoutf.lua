local function qtoutf(suffix)
    local total_outflow = require("sddp/total_outflow");
    return total_outflow(suffix);
end
return qtoutf;