local function usedcl(i, suffix)
    local dclink<const> = DCLink(i or 1);

    local dclink_flow = dclink:load("dclink" .. (suffix or "")):convert("MW");
    local flow_direction = dclink_flow:gt(0);

    return ifelse(
        flow_direction,
        safe_divide(dclink_flow, dclink.capacity_from),
        safe_divide(dclink_flow, dclink.capacity_to)
    ):convert("%");
end
return usedcl;
