local function gbcmgs(i, suffix)
    local battery = Battery(i or 1);
    local system = System(i or 1);
    local gerbat = battery:load("gerbat" .. (suffix or ""));
    local cmgdem = system:load("cmgdem" .. (suffix or ""));
    return (gerbat * cmgdem):convert("k$");
end
return gbcmgs;