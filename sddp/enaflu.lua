local function enaflu()
    local hydro = require("collection/hydro");
    local inflow = hydro:load("inflow");
    local fprodtac = hydro:load("fprodtac");
    return ifelse(hydro.existing:gt(0.5), 0, inflow * fprodtac):aggregate_agents(BY_SUM(), Collection.SYSTEMS):convert("GWh");
end
return enaflu;