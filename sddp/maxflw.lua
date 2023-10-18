local function maxflw(i)
    local circuit<const> = Circuit(i or 1);

    return circuit.capacity;
end
return maxflw;
