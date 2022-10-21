local function cinter2(i)
    local interconnection = Interconnection(i or 1);
    return interconnection.cost_left;
end
return cinter2;
