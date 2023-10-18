local function pnomnd(i)
    local renewable<const> = Renewable(i or 1);

    return renewable.capacity;
end
return pnomnd;
