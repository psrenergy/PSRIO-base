local function gerter_per_bus(suffix)
    local thermal = require("collection/thermal");
    return thermal:load("gerter" .. (suffix or "")):aggregate_agents(BY_SUM(), Collection.BUSES);
end
return gerter_per_bus;