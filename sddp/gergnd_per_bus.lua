local function gergnd_per_bus(suffix)
    local renewable = require("collection/renewable");
    local gergnd = renewable:load("gergnd" .. (suffix or ""));
    
    return gergnd:aggregate_agents(BY_SUM(), Collection.BUSES);
end
return gergnd_per_bus;