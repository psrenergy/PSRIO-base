local function tsfhid()
    local hydro = Hydro();
    return hydro.forced_outage_rate;
end
return tsfhid;