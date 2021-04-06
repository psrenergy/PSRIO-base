local function powinj_per_bus(suffix)
    local powerinjection = require("collection/powerinjection");
    return powerinjection:load("powinj" .. (suffix or "")):aggregate_agents(BY_SUM(), Collection.BUSES);
end
return powinj_per_bus;