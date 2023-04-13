local function demand(i)
    local study = Study(i or 1);

    if study:has_hourly_load() then
        local demand_hour = require("sddp/demand_hour");
        return demand_hour(i);
    else
        local demand_block = require("sddp/demand_block");
        return demand_block(i);
    end
end
return demand;
