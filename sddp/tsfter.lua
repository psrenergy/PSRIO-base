local function tsfter()
    local thermal = Thermal();
    return thermal.historical_outage_factor;
end
return tsfter;