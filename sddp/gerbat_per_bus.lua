local function gerbat_per_bus(suffix)
    local battery = require("collection/battery");
    return battery:load("gerbat" .. (suffix or "")):aggregate_agents(BY_SUM(), Collection.BUSES);
end
return gerbat_per_bus;