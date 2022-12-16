local function potter()
    local thermal = Thermal();
    local has_thermal = thermal.state:lt(1);
    return ifelse(has_thermal, thermal.max_generation_available, 0);
end
return potter;