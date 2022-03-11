local function renewable_generation_hour()
    local renewable = Renewable();
    return renewable.hour_generation * renewable.capacity * renewable.operation_factor;
end
return renewable_generation_hour;