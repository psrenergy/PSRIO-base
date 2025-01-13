function unitary_variable_cost(i, options)
  local thermal<const> = Thermal(i or 1);
  local fuel<const> = Fuel(i or 1);
  local study<const> = Study(i or 1);

  local aggregate_scenarios = false;
  if options then
    if options.aggregate_scenarios then
      aggregate_scenarios = options.aggregate_scenarios;
    end
  end

  local thermal_generation = thermal:load("gerter"):convert("MW");
  if aggregate_scenarios then
    thermal_generation = thermal_generation:aggregate_scenarios(BY_AVERAGE());
  end

  local specific_consumption = thermal.specific_consumption_segment_1;

  if thermal_generation:loaded() then
      -- percentage of each specific consumption curve segment
      local percent_1 = thermal.curve_segment_1:convert("pu"):save_cache();
      local percent_2 = thermal.curve_segment_2:convert("pu"):save_cache();

      -- value of each specific consumption curve segment
      local segment_1 = thermal.specific_consumption_segment_1;
      local segment_2 = thermal.specific_consumption_segment_2;
      local segment_3 = thermal.specific_consumption_segment_3;

      if study:is_hourly() then
          segment_1 = segment_1:to_hour(BY_REPEATING());
          segment_2 = segment_2:to_hour(BY_REPEATING());
          segment_3 = segment_3:to_hour(BY_REPEATING());
      end

      local thermal_capacity = thermal.max_generation_available;

      local generation_pu = (thermal_generation / thermal_capacity):convert("pu"):save_cache();

      local segment_1_generation = ifelse(generation_pu:le(percent_1), segment_1, 0);
      local segment_2_generation = ifelse(generation_pu:gt(percent_1) and generation_pu:le(percent_2), segment_2, 0);
      local segment_3_generation = ifelse(generation_pu:gt(percent_2), segment_3, 0);

      specific_consumption = (segment_1_generation + segment_2_generation + segment_3_generation):save_cache();
  end

  return specific_consumption * (thermal.fuel_transportation_cost + fuel.cost) + thermal.om_cost;
end
return unitary_variable_cost;
