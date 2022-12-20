local function datarr(i)
    local thermal = Thermal(i or 1);

    return thermal.startup_cost;
end
return datarr;