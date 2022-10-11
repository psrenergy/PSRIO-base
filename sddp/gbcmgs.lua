local function gbcmgs(suffix)
    local battery = Battery();
    local gerbat = battery:load("gerbat" .. (suffix or ""));
    local system = System();
    local cmgdem = system:load("cmgdem" .. (suffix or ""));
    return (gerbat * cmgdem):convert("k$");
end
return gbcmgs;