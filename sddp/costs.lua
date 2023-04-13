local function costs(i, suffix)
    local generic = Generic(i or 1);
    local objcop = generic:load("objcop" .. (suffix or ""));

    local study = Study(i or 1);
    if study:is_hourly() then
        return objcop:remove_agent(1); -- remove future cost
    else
        return objcop:remove_agents({ 1, -1 }); -- remove total cost and future cost
    end
end
return costs;
