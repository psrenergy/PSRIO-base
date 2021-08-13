local function ggcmgs(suffix)
    local renewable = Renewable();
    local gergnd = renewable:load("gergnd" .. (suffix or ""));
    local system = System();
    local cmgdem = system:load("cmgdem" .. (suffix or ""));
    return gergnd * cmgdem;
end
return ggcmgs;