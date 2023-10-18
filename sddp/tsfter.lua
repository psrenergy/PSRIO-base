local function tsfter(i)
    local thermal<const> = Thermal(i);

    return thermal.historical_outage_factor;
end
return tsfter;
