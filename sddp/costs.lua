local function costs()
    local generic = Generic();
    local objcop = generic:load("objcop");

    local study = Study();
    if study:is_hourly() then
        return objcop:remove_agent(1); -- remove future cost
    else
        return objcop:remove_agents({1, -1}); -- remove total cost and future cost
    end
end
return costs;