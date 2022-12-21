local function potgnd(i)
    local renewable = Renewable(i or 1);

    return renewable.block_generation * renewable.capacity;
end
return potgnd;