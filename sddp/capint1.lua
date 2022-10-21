local function capint1(i)
    local interconnection = Interconnection(i or 1);
    return interconnection.capacity_right;
end
return capint1;
