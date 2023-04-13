local function pnomnd(i)
    local renewable = Renewable(i or 1);

    return renewable.capacity;
end
return pnomnd;
