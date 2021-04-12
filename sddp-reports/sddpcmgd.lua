local function sddpcmgd()
    local system = require("collection/system");
    local cmgdem = system:load("cmgdem");
    return cmgdem:aggregate_blocks(BY_AVERAGE()):aggregate_scenarios(BY_AVERAGE());
end
return sddpcmgd;