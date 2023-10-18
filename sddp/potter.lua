local function potter(i)
    local thermal<const> = Thermal(i);

    local has_thermal = thermal.state:lt(1);

    return ifelse(has_thermal, thermal.max_generation_available, 0);
end
return potter;
