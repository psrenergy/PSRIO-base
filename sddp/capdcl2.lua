local function capdcl2(i)
    local dclink<const> = DCLink(i or 1);

    return dclink.capacity_to;
end
return capdcl2;
