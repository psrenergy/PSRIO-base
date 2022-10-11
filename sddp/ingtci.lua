local function ingtci(suffix)
    local bus = Bus();
    local cmgbus = bus:load("cmgbus" .. (suffix or ""));
    local circuit = Circuit();
    local cirflw = circuit:load("cirflw" .. (suffix or "")):convert("MWh");
    local difference = cmgbus:circuit_to() - cmgbus:circuit_from();
    return (difference * cirflw):convert("k$");
end
return ingtci;