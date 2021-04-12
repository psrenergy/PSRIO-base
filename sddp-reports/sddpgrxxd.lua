local function sddpgrxxd()
    local hydro = require("collection/hydro");
    local gerhid = hydro:load("gerhid");

    local thermal = require("collection/thermal");
    local gerter = thermal:load("gerter");
    
    local renewable = require("collection/renewable");
    local gergnd = renewable:load("gergnd");
    
    local battery = require("collection/battery")
    local gerbat = battery:load("gerbat");

    local system = require("collection/system")
    local defcit = system:load("defcit");

    return concatenate(
        gerhid:aggregate_agents(BY_SUM(), "Total Hydro"):aggregate_blocks(BY_SUM()):aggregate_scenarios(BY_AVERAGE()),
        gerter:aggregate_agents(BY_SUM(), "Total Thermal"):aggregate_blocks(BY_SUM()):aggregate_scenarios(BY_AVERAGE()),
        gergnd:aggregate_agents(BY_SUM(), "Total Renewable"):aggregate_blocks(BY_SUM()):aggregate_scenarios(BY_AVERAGE()),
        gerbat:aggregate_agents(BY_SUM(), "Total Battery"):aggregate_blocks(BY_SUM()):aggregate_scenarios(BY_AVERAGE()):convert("GWh"),
        defcit:aggregate_agents(BY_SUM(), "Deficit"):aggregate_blocks(BY_SUM()):aggregate_scenarios(BY_AVERAGE())
    );
end
return sddpgrxxd;