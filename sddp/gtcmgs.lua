local function gtcmgs(suffix)
    local thermal = Thermal();
    local gerter = thermal:load("gerter" .. (suffix or ""));
    local system = System();
    local cmgdem = system:load("cmgdem" .. (suffix or ""));
    return gerter * cmgdem;
end
return gtcmgs;