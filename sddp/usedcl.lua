local function usedcl(i, suffix)
    local dclink = DCLink(i or 1);
    local flow = dclink:load("dclink" .. (suffix or "")):convert("MW");
    return ifelse(flow:gt(0),
        ifelse(dclink.capacity_right:gt(0), flow / dclink.capacity_right, 1.0),
        ifelse(dclink.capacity_left:gt(0), -flow / dclink.capacity_left, 1.0)
    ):convert("%");
end
return usedcl;