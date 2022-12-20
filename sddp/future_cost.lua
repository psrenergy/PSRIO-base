local function future_cost(i, suffix)
    local generic = Generic(i or 1);
    local study = Study(i or 1);

    local costs_by_category = generic:load("objcop" .. (suffix or ""));

    if study:is_hourly() then
        return costs_by_category:select_agent(1);
    else
        return costs_by_category:select_agent(-1);
    end
end
return future_cost;

