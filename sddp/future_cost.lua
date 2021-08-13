local function future_cost()
    local generic = Generic();
    local objcop = generic:load("objcop");
    local study = Study();
    if study:is_hourly() then
        return objcop:select_agents({1});
    else
        return objcop:select_agents({-1});
    end
end
return future_cost;

