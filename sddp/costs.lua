local function costs(i, suffix)
    local generic = Generic(i or 1);
    local costs_by_category = generic:load("objcop" .. (suffix or ""));

    local study = Study(i or 1);
    if study:is_hourly() then
        return costs_by_category:remove_agent(1); -- remove future cost
    else
        return costs_by_category:remove_agents({ 1, -1 }); -- remove total cost and future cost
    end
end
return costs;
