local function ghcmgs(suffix)
    local hydro = Hydro();
    local gerhid = hydro:load("gerhid" .. (suffix or ""));
    local system = System();
    local cmgdem = system:load("cmgdem" .. (suffix or ""));
    return gerhid * cmgdem;
end
return ghcmgs;