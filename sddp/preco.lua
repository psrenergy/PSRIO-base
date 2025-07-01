-- Function to calculate the price based on given parameters
function preco(data, floor, top, mean_top)

  if data:stage_type() ~= 2 then
    error("This function is only applicable for studies with monthly stage type.");
  end

  if not data:is_hourly() then
    -- If the data resolution is by block, filter the date by floor and mean_top.
    return max(min(data, mean_top), floor)
  else
    -- Filter the data by floor and top.
    local self_min_max = max(min(data, top), floor)

    -- Change data profile to daily.
    local self_min_max_daily = self_min_max:reshape_stages(Profile.DAY):save_cache()

    -- Get the daily average for each day, scenario.
    local temp_ave = self_min_max_daily:aggregate_blocks(BY_AVERAGE()):save_cache()

    -- Count the number of values greater than floor for each day, scenario.
    local temp_cont = self_min_max_daily:gt(floor):aggregate_blocks(BY_SUM()):save_cache()

    -- Compute the reduction factor for each day, scenario.
    local temp_red = max((temp_ave - mean_top) * 24 / temp_cont, 0):save_cache()

    -- Auxiliary table to append each PLD daily data.
    local table_stage_data = {}

    -- Loop through days.
    local stages = self_min_max_daily:stages()
    for stg = 1, stages do
        info("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")
        info("STAGE - " .. stg)
        info("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")

        -- Get the values of each created variable by day.
        local temp_ave_stg = temp_ave:select_stage(stg)
        local temp_cont_stg = temp_cont:select_stage(stg)
        local temp_red_stg = temp_red:select_stage(stg)
        local self_min_max_daily_stg = self_min_max_daily:select_stage(stg)

        -- Search for a scenario average daily PLD that is greater than mean_top.
        local temp_ave_stg_eval = temp_ave_stg:gt(mean_top):aggregate_agents(BY_SUM(), "total"):aggregate_scenarios(
        BY_SUM()):to_list()[1]

        local count = 0
        while temp_ave_stg_eval > 0 do
            count = count + 1
            info("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")
            info("IT - " .. count)
            info("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")

            -- Apply the reduction factor in this daily PLD.
            self_min_max_daily_stg = max(self_min_max_daily_stg - temp_red_stg, floor):save_cache()

            -- Recalculate the evaluating variables.
            temp_ave_stg = self_min_max_daily_stg:aggregate_blocks(BY_AVERAGE())
            temp_cont_stg = self_min_max_daily_stg:gt(floor):aggregate_blocks(BY_SUM())
            temp_red_stg = max((temp_ave_stg - mean_top) * 24 / temp_cont_stg, 0)

            -- Reseach for a scenario average daily PLD that is greater than mean_top.
            temp_ave_stg_eval = temp_ave_stg:gt(mean_top):aggregate_agents(BY_SUM(), "total"):aggregate_scenarios(BY_SUM())
                                            :to_list()[1]
        end
        table.insert(table_stage_data, self_min_max_daily_stg)
    end
    return concatenate_stages(table_stage_data):reshape_stages(Profile.MONTH)
  end
end
return preco;