local function capdcl1(i)
    local dclink<const> = DCLink(i or 1);

    return dclink.capacity_from;
end
return capdcl1;
