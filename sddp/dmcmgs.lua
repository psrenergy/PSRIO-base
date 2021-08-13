local function dmcmgs(suffix)
    local system = System();
    local demand = system:load("demand" .. (suffix or ""));
    local defcit = system:load("defcit" .. (suffix or ""));
    local cmgdem = system:load("cmgdem" .. (suffix or ""));
    return (demand - defcit) * cmgdem;
end
return dmcmgs;