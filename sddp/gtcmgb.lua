local function gtcmgb(i, suffix)
    local bus = Bus(i or 1);
    local thermal = Thermal(i or 1);
    local gerter = thermal:load("gerter" .. (suffix or ""));
    local cmgbus = bus:load("cmgbus" .. (suffix or ""));
    return gerter * cmgbus;
end
return gtcmgb;