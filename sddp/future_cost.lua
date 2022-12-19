local function future_cost()
    local generic = Generic();
    local study = Study();

    local costs_by_category = generic:load("objcop");

    if study:is_hourly() then
        return costs_by_category:select_agent(1);
    else
        return costs_by_category:select_agent(-1);
    end
end
return future_cost;

