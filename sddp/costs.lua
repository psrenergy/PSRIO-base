local function costs()
    local generic = require("collection/generic");
    local objcop = generic:load("objcop");
    local study = require("collection/study");
    
    if study:is_hourly() then
        return objcop:remove_agents({1}); -- remove future cost
    else
        return objcop:remove_agents({1,-1}); -- remove total cost and future cost
    end
end
return costs;