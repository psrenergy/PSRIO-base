local function capint1(i)
    local interconnection<const> = Interconnection(i or 1);

    return interconnection.capacity_from;
end
return capint1;
