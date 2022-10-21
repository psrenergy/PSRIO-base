local function ghcmgb(i, suffix)
    local bus = Bus(i or 1);
    local hydro = Hydro(i or 1);
    local gerhid = hydro:load("gerhid" .. (suffix or ""));
    local cmgbus = bus:load("cmgbus" .. (suffix or ""));
    return gerhid * cmgbus;
end
return ghcmgb;