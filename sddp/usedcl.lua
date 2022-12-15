local function usedcl(suffix)
    local dclink = DCLink();
    local flow = dclink:load("dclink" .. (suffix or "")):convert("MW");
    return ifelse(flow:gt(0),
        ifelse(dclink.capacity_from:gt(0), flow / dclink.capacity_from, 1.0),
        ifelse(dclink.capacity_to:gt(0), -flow / dclink.capacity_to, 1.0)
    ):convert("%");
end
return usedcl;