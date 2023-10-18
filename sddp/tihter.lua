local function tihter(i)
    local thermal<const> = Thermal(i or 1);

    return thermal.forced_outage_rate;
end
return tihter;
