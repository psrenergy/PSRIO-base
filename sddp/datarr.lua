local function datarr(i)
    local thermal<const> = Thermal(i or 1);

    return thermal.startup_cost;
end
return datarr;
