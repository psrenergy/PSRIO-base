-- Loads the output into its class collection (missing agents become zero columns),
-- falling back to Generic when the class is unknown or the output does not match it.
function psrplot_load(class_name, study_index, filename)
    if class_name ~= nil and class_name ~= "" then
        local ok, collection = pcall(PSRCollection, class_name, study_index);
        if ok then
            local output = collection:load(filename);
            if output:loaded() then
                return output;
            end
        end
    end
    return Generic(study_index):load(filename);
end

function Chart.psrplot_graph(self, tag, e1, options)
    local options = (options or {});
    -- The study's reference currency in place of the outputs' "$" (k$/MW -> kXPF/MW); the values are unchanged.
    if e1:loaded() then
        local currency = Study(e1:study_index()):get_currency_reference();
        if currency ~= "" then
            e1 = e1:force_currency("$", currency);
        end
    end
    local blocks_resolution = e1:has_blocks();
    local is_not_hourly_resolution = not e1:is_hourly();
    local is_not_subhourly_resolution = not e1:is_subhourly();
    local block_graph = ((tag ~= "pie") and (tag ~= "histogram"));
    if blocks_resolution and is_not_hourly_resolution and block_graph and is_not_subhourly_resolution then
        if tag == "line" or tag == "line_stacking" or tag == "line_percent" then
            if options.connectNulls == nil then options.connectNulls = true; end
        end
        if e1:scenarios() == 1 then
            self:add_block_category(tag, e1, options);

        else
            for scenario = 1, e1:scenarios() do
                local scenario_index = e1:scenario_index(scenario);
                local selected_scenario = e1:select_scenario(scenario):add_suffix(" (scenario:" .. scenario_index .. ")");
                self:add_block_category(tag, selected_scenario, options);
            end
        end
    else 
        self:add(tag, e1, options);
    end
end

function Chart.psrplot_range_graph(self, tag, lower, upper, options)
    local options = (options or {});
    if tag ~= "line" then
        self:psrplot_graph(tag, lower, options);
        self:psrplot_graph(tag, upper, options);
        return;
    end

    if lower:loaded() and upper:loaded() then
        -- One name for the cloud: X:PERC(10) and X:PERC(90) become X:PERC(10-90).
        local lower_names = lower:agents();
        local upper_names = upper:agents();
        local names = {};
        for i = 1, #lower_names do
            local base, lower_percentile = lower_names[i]:match("^(.*):PERC%((.-)%)$");
            local upper_base, upper_percentile = upper_names[i]:match("^(.*):PERC%((.-)%)$");
            if base ~= nil and base == upper_base then
                names[i] = base .. ":PERC(" .. lower_percentile .. "-" .. upper_percentile .. ")";
            else
                names[i] = lower_names[i];
            end
        end
        lower = lower:rename_agents(names);
        upper = upper:rename_agents(names);

        -- The study's reference currency in place of the outputs' "$" (k$/MW -> kXPF/MW); the values are unchanged.
        local currency = Study(lower:study_index()):get_currency_reference();
        if currency ~= "" then
            lower = lower:force_currency("$", currency);
            upper = upper:force_currency("$", currency);
        end
    end
    local blocks_resolution = lower:has_blocks();
    local is_not_hourly_resolution = not lower:is_hourly();

    if blocks_resolution and is_not_hourly_resolution then
        self:add_block_category("area_range", lower, upper, options);
    else
        self:add_area_range(lower, upper, options);
    end
end

function Expression.select_blocks_psrplot(self, blocks)
    local tag<const> = "SELECT_BLOCKS_PSRPLOT";

    info(tag .. ": " .. self:data_info());

    if not self:loaded() then
        warning(tag .. ": null at " .. PSR.source_line(2));
        return self;
    end

    if blocks == nil then
        error(tag .. ": blocks must not be nil");
    end

    local output;
    local original_console_verbose = PSR.console_verbose_level();
    PSR.console_verbose_level(0);

    if self:is_hourly() or self:is_subhourly() then
        output = self:filter_blocks(blocks);
    elseif self:has_blocks() then
        output = self:select_blocks(blocks);
    else
        output = self;
    end

    PSR.console_verbose_level(original_console_verbose);
    info(tag .. "= " .. output:data_info());
    return output;
end

function Expression.select_blocks_psrplot_range(self, first_block, last_block)
    local tag<const> = "SELECT_BLOCKS_PSRPLOT_RANGE";

    info(tag .. ": " .. self:data_info());

    if not self:loaded() then
        warning(tag .. ": null at " .. PSR.source_line(2));
        return self;
    end

    if first_block == nil or last_block == nil then
        error(tag .. ": first and last blocks must not be nil");
    end

    local original_console_verbose = PSR.console_verbose_level();
    PSR.console_verbose_level(0);

    local output;
    if self:is_hourly() or self:is_subhourly() then
        output = self:filter_blocks(first_block, last_block);
    elseif self:has_blocks() then
        output = self:select_blocks(first_block, last_block);
    else
        error(tag .. ": expression must vary by blocks, hours, or subhours");
    end

    PSR.console_verbose_level(original_console_verbose);
    info(tag .. "= " .. output:data_info());
    return output;
end
