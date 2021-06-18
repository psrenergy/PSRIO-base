local function sddpcmgd(suffix)
    local system = require("collection/system");
    local cmgdem = system:load("cmgdem" .. (suffix or ""));
    return cmgdem:aggregate_blocks(BY_AVERAGE()):aggregate_scenarios(BY_AVERAGE());
end
return sddpcmgd;