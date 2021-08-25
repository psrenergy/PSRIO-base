local function potter()
    local thermal = Thermal();
    return ifelse(thermal.existing:gt(0.5), 0, thermal.capacity_maintenance);
end
return potter;