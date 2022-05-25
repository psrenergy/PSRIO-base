local function tihter()
    local thermal = Thermal();
    return thermal.forced_outage_rate;
end
return tihter;