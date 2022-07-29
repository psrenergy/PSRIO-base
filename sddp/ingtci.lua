local function ingtci(suffix)
    local bus = Bus();
    local cmgbus = bus:load("cmgbus" .. (suffix or ""));
    local circuit = Circuit();
    local cirflw = circuit:load("cirflw" .. (suffix or ""));
    return (cmgbus:to() - cmgbus:from()) * cirflw:convert("MWh");
end
return ingtci;