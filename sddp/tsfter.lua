local function tsfter(i)
    local thermal = Thermal(i or 1);
    return thermal.historical_outage_factor;
end
return tsfter;