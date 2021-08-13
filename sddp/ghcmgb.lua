local function ghcmgb(suffix)
    local hydro = Hydro();
    local gerhid = hydro:load("gerhid" .. (suffix or ""));
    local bus = Bus();
    local cmgbus = bus:load("cmgbus" .. (suffix or ""));
    return gerhid * cmgbus;
end
return ghcmgb;