local function discount_rate_per_year(i)
    local study = Study(i or 1);

    local initial_year = study.discount_rate:initial_year();
    local discount_rate = study.discount_rate:aggregate_stages(BY_FIRST_VALUE(), Profile.PER_YEAR);
    local year = study.year:aggregate_stages(BY_FIRST_VALUE(), Profile.PER_YEAR);

    return (1 + discount_rate) ^ (year - initial_year);
end
return discount_rate_per_year;
