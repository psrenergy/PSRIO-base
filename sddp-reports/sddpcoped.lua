local function sddpcoped()
    local costs = require("sddp/costs");
    local future_cost = require("sddp/future_cost");
    local discount_rate = require("sddp/discount_rate");
    
    local costs_aggregated = costs():aggregate_blocks(BY_SUM()):aggregate_scenarios(BY_AVERAGE());
    local future_cost_aggregated = future_cost():aggregate_blocks(BY_SUM()):aggregate_scenarios(BY_AVERAGE());

    return concatenate(
        (costs_aggregated / discount_rate()):aggregate_stages(BY_SUM()),
        (future_cost_aggregated / discount_rate()):aggregate_stages(BY_LAST_VALUE())
    );
end
return sddpcoped;