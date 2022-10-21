local function future_cost(i)
    local generic = Generic(i or 1);
    local study = Study(i or 1);
    local objcop = generic:load("objcop");
    if study:is_hourly() then
        return objcop:select_agent(1);
    else
        return objcop:select_agent(-1);
    end
end
return future_cost;

