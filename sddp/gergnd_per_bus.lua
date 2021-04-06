local function gergnd_per_bus(suffix)
    local renewable = require("collection/renewable");
    return renewable:load("gergnd" .. (suffix or "")):aggregate_agents(BY_SUM(), Collection.BUSES);
end
return gergnd_per_bus;