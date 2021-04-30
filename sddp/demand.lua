local function demand()
    local demand_block = require("sddp/demand_block");
    local demand_hour = require("sddp/demand_hour");

    local study = require("collection/study");
    if study:is_hourly_load() then
        return demand_hour();
    else
        return demand_block();
    end
end
return demand;