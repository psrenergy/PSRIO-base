local function circuit_loading(i, suffix)
    local circuit<const> = Circuit(i or 1);

    local circuit_flow = circuit:load("cirflw" .. (suffix or ""));

    return (circuit_flow:abs() / circuit.capacity):convert("%");
end
return circuit_loading;
