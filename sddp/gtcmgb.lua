local function gtcmgb(suffix)
    local thermal = Thermal();
    local gerter = thermal:load("gerter" .. (suffix or ""));
    local bus = Bus();
    local cmgbus = bus:load("cmgbus" .. (suffix or ""));
    return gerter * cmgbus;
end
return gtcmgb;