local function demand()
    local study = Study();
    if study:is_hourly_load() then
        local demand_hour = require("sddp/demand_hour");
        return demand_hour();
    else
        local demand_block = require("sddp/demand_block");
        return demand_block();
    end
end
return demand;