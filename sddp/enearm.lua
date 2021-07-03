local function enearm(suffix)
    local eneemb = require("sddp/eneemb");
    return eneemb(suffix):aggregate_agents(BY_SUM(), Collection.SYSTEMS);
end
return enearm;