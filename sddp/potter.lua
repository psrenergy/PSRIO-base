local function potter(i)
    local thermal = Thermal(i or 1);
    return ifelse(thermal.state:gt(0.5), 0, thermal.max_generation_available);
end
return potter;