-- Function to get modifications from a data file
local function calc_pld(data_name, i)
    local std_index = (i or 1);

    local preco = require("sddp/preco");

    if Study(std_index):stage_type() ~= 2 then
        error("This function is only applicable for studies with monthly stage type.");
    end

    -- Load data from a file without header
    local input_date_table = Generic(std_index):load_table_without_header(data_name .. ".dat")

    -- Check if the input table is not empty
    if #input_date_table > 0 then
        -- Create a Generic object
        local generic = Generic(std_index);

        -- Load cmgdem data
        local cmgdem = generic:force_load("cmgdem");

        -- Get the final year and month from cmgdem data
        local final_year = cmgdem:final_year();
        local final_month = cmgdem:month(cmgdem:last_stage());

        local initial_year = cmgdem:initial_year();

        -- First year validation
        local first_date = input_date_table[3][2];
        local first_year, _, _ = string.match(first_date, "(%d+)/(%d+)/(%d+)");
        if (first_year < initial_year) then
            error(data_name .. " first input date year is before the initial year of cmgdem data.");
        end
        if (first_year > final_year) then
            error(data_name .. " input date year exceeds the final year of cmgdem data.");
        end
        
        -- Get the number of stages in cmgdem data
        local data_stages = cmgdem:stages();
        -- Initialize a table to store price data
        local data_preco = {};
        -- Initialize a stage counter
        local cont_stage = 1;

        -- Iterate over the input date table starting from the 3rd row
        for lin = 3, #input_date_table do
            -- Extract the date and split it into year, month, and day
            local date = input_date_table[lin][2];
            local year, month, _ = string.match(date, "(%d+)/(%d+)/(%d+)");
            local year = tonumber(year);
            local month = tonumber(month);

            local next_year;
            local next_month;
            if lin == #input_date_table then
                -- If it's the last line, use the final year and month from cmgdem
                next_year = final_year;
                next_month = final_month;
            else
                local next_date = input_date_table[lin + 1][2];
                next_year, next_month, _ = string.match(next_date, "(%d+)/(%d+)/(%d+)");
                next_year = tonumber(next_year);
                next_month = tonumber(next_month);
            end

            -- Convert the actual and next dates to epoch time
            local actual_date = datetime.epoch_from_date(year, month, 1);
            local next_date = datetime.epoch_from_date(next_year, next_month, 1);

            -- Get the floor, top, and mean_top values from the input table
            local floor = tonumber(input_date_table[lin][3]);
            local top = tonumber(input_date_table[lin][4]);
            local mean_top = tonumber(input_date_table[lin][5]);

            -- Check if the current stage counter is within the number of stages
            if cont_stage <= data_stages then
                -- Loop through the dates until the actual date exceeds the next date
                while actual_date <= next_date do

                    local month_PLD = cmgdem:select_stages_by_year(year):select_stage(cont_stage);
                    if month_PLD:loaded() then
                        -- Get the month from the selected stage
                        month = month_PLD:month(cont_stage);
                        -- Calculate the price and insert it into the data_preco table
                        table.insert(data_preco, preco(month_PLD, floor, top, mean_top));
                        cont_stage = cont_stage + 1;
                    end

                    if month == 12 then
                        month = 1;
                        year = year + 1;
                    else
                        month = month + 1;
                    end

                    actual_date = datetime.epoch_from_date(year, month, 1);
                end
            end
        end

        -- Concatenate the stages and return the result
        return concatenate_stages(data_preco);
    end
end
return calc_pld;
