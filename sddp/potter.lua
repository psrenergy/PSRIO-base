local function potter()
    local thermal = Thermal();
    return ifelse(thermal.state:gt(0.5), 0, thermal.maximum_generation_available);
end
return potter;