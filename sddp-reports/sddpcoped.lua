local function sddpcoped()
    local costs = require("sddp/costs");
    local future_cost = require("sddp/future_cost");
    local discount_rate = require("sddp/discount_rate");

    return concatenate(
        (costs():aggregate_blocks(BY_SUM()):aggregate_scenarios(BY_AVERAGE()) / discount_rate):aggregate_stages(BY_SUM()),
        (future_cost():aggregate_blocks(BY_SUM())/discount_rate):aggregate_stages(BY_LAST_VALUE()):aggregate_scenarios(BY_AVERAGE())
    );
end
return sddpcoped;