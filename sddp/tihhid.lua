local function tihhid(i)
    local hydro = Hydro(i or 1);

    return hydro.historical_outage_factor;
end
return tihhid;
