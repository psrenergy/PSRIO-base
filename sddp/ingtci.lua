local function ingtci(i, suffix)
    local bus = Bus(i or 1);
    local circuit = Circuit(i or 1);
    local cmgbus = bus:load("cmgbus" .. (suffix or ""));
    local cirflw = circuit:load("cirflw" .. (suffix or "")):convert("MWh");
    local difference = cmgbus:circuit_to() - cmgbus:circuit_from();
    return (difference * cirflw):convert("k$");
end
return ingtci;