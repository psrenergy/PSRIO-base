local function datarr(i)
    local thermal<const> = Thermal(i);

    return thermal.startup_cost;
end
return datarr;
