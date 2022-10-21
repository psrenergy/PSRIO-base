local function ggcmgs(i, suffix)
    local renewable = Renewable(i or 1);
    local system = System(i or 1);
    local gergnd = renewable:load("gergnd" .. (suffix or ""));
    local cmgdem = system:load("cmgdem" .. (suffix or ""));
    return gergnd * cmgdem;
end
return ggcmgs;