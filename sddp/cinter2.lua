local function cinter2(i)
    local interconnection<const> = Interconnection(i or 1);

    return interconnection.cost_to;
end
return cinter2;
