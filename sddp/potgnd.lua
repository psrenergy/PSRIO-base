local function potgnd(i)
    local renewable = Renewable(i or 1);
    local study = Study(i or 1);

    if study:has_hourly_renewable_scenarios() then
        return renewable.hour_scenarios * renewable.capacity;
    else
        return renewable.block_scenarios * renewable.capacity;
    end
end
return potgnd;
