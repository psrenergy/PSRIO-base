local function unitary_variable_cost(i)
    local thermal = Thermal(i);
    local fuel = Fuel(i);

    local thermal_generation = thermal:load("gerter"):convert("MW");
    local cost = thermal.specific_consumption_segment_1;

    if thermal_generation:loaded() then
        local segment_1 = thermal.specific_consumption_segment_1;
        local segment_2 = thermal.specific_consumption_segment_2;
        local segment_3 = thermal.specific_consumption_segment_3;

        local percent_1 = thermal.curve_segment_1:convert("pu");
        local percent_2 = thermal.curve_segment_2:convert("pu");
        local percent_3 = thermal.curve_segment_3:convert("pu");

        local thermal_capacity = thermal.max_generation;

        local generation_pu = (thermal_generation / thermal_capacity):convert("pu");

        local segment_1_generation = ifelse(generation_pu:le(percent_1), segment_1, 0);
        local segment_2_generation = ifelse(generation_pu:gt(percent_1) and generation_pu:le(percent_2), segment_2, 0);
        local segment_3_generation = ifelse(generation_pu:ge(percent_3), segment_3, 0);

        cost = (segment_1_generation + segment_2_generation + segment_3_generation);
    end

    return cost * (thermal.fuel_transportation_cost + fuel.cost) + thermal.om_cost;
end
return unitary_variable_cost;