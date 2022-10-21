local function gerbat_per_bus(i, suffix)
    local battery = Battery(i or 1);
    local gerbat = battery:load("gerbat" .. (suffix or ""));
    return gerbat:aggregate_agents(BY_SUM(), Collection.BUSES);
end
return gerbat_per_bus;