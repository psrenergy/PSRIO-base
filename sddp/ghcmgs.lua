local function ghcmgs(i, suffix)
    local hydro = Hydro(i or 1);
    local system = System(i or 1);
    local gerhid = hydro:load("gerhid" .. (suffix or ""));
    local cmgdem = system:load("cmgdem" .. (suffix or ""));
    return gerhid * cmgdem;
end
return ghcmgs;