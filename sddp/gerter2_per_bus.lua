local function gerter2_per_bus(suffix)
    local thermal = require("collection/thermal");
    local gerter2 = thermal:load("gerter2" .. (suffix or ""));
    
    return gerter2:aggregate_agents(BY_SUM(), Collection.BUSES);
end
return gerter2_per_bus;