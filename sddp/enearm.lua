local function enearm()
    local eneemb = require("sddp/eneemb");
    return eneemb:aggregate_agents(BY_SUM(), Collection.SYSTEMS);
end
return enearm;