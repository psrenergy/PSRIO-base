local function capdcl2(i)
    local dclink = DCLink(i or 1);
    return dclink.capacity_left;
end
return capdcl2;
