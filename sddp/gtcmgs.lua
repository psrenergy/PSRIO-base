local function gtcmgs(i, suffix)
    local system = System(i or 1);
    local thermal = Thermal(i or 1);
    local gerter = thermal:load("gerter" .. (suffix or ""));
    local cmgdem = system:load("cmgdem" .. (suffix or ""));
    return gerter * cmgdem;
end
return gtcmgs;