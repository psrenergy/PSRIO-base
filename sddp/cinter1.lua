local function cinter1(i)
    local interconnection = Interconnection(i or 1);

    return interconnection.cost_from;
end
return cinter1;