local function discount_rate()
    local study = require("collection/study");
    return (1 + study.discount_rate) ^ ((study.stage - 1) / study.stages_per_year);
end
return discount_rate;