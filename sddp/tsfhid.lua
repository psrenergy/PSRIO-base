local function tsfhid(i)
    local hydro = Hydro(i or 1);
    return hydro.forced_outage_rate;
end
return tsfhid;