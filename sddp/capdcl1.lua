local function capdcl1(i)
    local dclink = DCLink(i or 1);
    return dclink.capacity_right;
end
return capdcl1;
