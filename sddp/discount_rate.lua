local function discount_rate(i)
    local study = Study(i or 1);

    return (1 + study.discount_rate) ^ ((study.stage - 1) / study:stages_per_year());
end
return discount_rate;