local function qtoutf(i, suffix)
    local total_outflow = require("sddp/total_outflow");

    return total_outflow(i, suffix);
end
return qtoutf;