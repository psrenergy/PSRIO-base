local function capint2(i)
    local interconnection = Interconnection(i or 1);

    return interconnection.capacity_to;
end
return capint2;
