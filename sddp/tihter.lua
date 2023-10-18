local function tihter(i)
    local thermal<const> = Thermal(i);

    return thermal.forced_outage_rate;
end
return tihter;
