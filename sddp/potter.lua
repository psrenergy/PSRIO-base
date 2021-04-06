local function potter()
    local thermal = require("collection/thermal");
    return ifelse(thermal.existing:gt(0.5), 0, thermal.germax_maintenance);
end
return potter;