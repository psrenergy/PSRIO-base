local function unitary_variable_cost(i)
    local thermal = Thermal(i);
    local fuel = Fuel(i);

    local gerter = thermal:load("gerter"):convert("MW");
    local CEsp = thermal.specific_consumption_segment_1;

    if gerter:loaded() then
        -- Percentage of each specific consumption curve segment
        local percent_1 = thermal.curve_segment_1:convert("pu");
        local percent_2 = thermal.curve_segment_2:convert("pu");
        local percent_3 = thermal.curve_segment_3:convert("pu");

        -- Value of each specific consumption curve segment
        local segment_1 = thermal.specific_consumption_segment_1;
        local segment_2 = thermal.specific_consumption_segment_2;
        local segment_3 = thermal.specific_consumption_segment_3;

        local thermal_capacity = thermal.max_generation;

        local generation_pu = (gerter/thermal_capacity):convert("pu");

        local segment_1_generation = ifelse(generation_pu:le(percent_1),segment_1,0);
        local segment_2_generation = ifelse(generation_pu:gt(percent_1) and generation_pu:le(percent_2),segment_2,0);
        local segment_3_generation = ifelse(generation_pu:gt(percent_2),segment_3,0);

        CEsp = (segment_1_generation + segment_2_generation + segment_3_generation);
    end

    return (CEsp * (thermal.fuel_transportation_cost + fuel.cost) + thermal.om_cost);
end
return unitary_variable_cost;