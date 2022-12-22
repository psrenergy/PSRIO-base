local function renewable_generation_hour(i)
    local renewable = Renewable(i or 1);

    return renewable.hour_scenarios * renewable.capacity * renewable.operation_factor;
end
return renewable_generation_hour;