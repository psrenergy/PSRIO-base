local function usedcl(i, suffix)
    local dclink<const> = DCLink(i or 1);

    local dclink_flow = dclink:load("dclink" .. (suffix or "")):convert("MW");
    local flow_direction = dclink_flow:gt(0);

    return ifelse(
        flow_direction,
        ifelse(dclink.capacity_from:gt(0), dclink_flow / dclink.capacity_from, 1),
        ifelse(dclink.capacity_to:gt(0), -dclink_flow / dclink.capacity_to, 1)
    ):convert("%");
end
return usedcl;
