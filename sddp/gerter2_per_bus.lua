local function gerter2_per_bus(suffix)
    local thermal = require("collection/thermal");
    return thermal:load("gerter2" .. (suffix or "")):aggregate_agents(BY_SUM(), Collection.BUSES);
end
return gerter2_per_bus;