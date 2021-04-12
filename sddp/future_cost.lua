local function future_cost()
    local generic = require("collection/generic");
    local objcop = generic:load("objcop");
    local study = require("collection/study");

    if study:is_hourly() then
        return objcop:select_agents({1});
    else
        return objcop:select_agents({-1});
    end
end
return future_cost;

