local function tihter(i)
    local thermal = Thermal(i or 1);

    return thermal.forced_outage_rate;
end
return tihter;