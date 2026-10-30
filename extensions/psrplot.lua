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

-- The color of a series: its agent's entry in agent_colors, or nil. A series derived from an agent
-- (GCH-069 - (tag), GCH-069:AVG, GCH-069 (scenario:3)) takes the color of the longest agent name it
-- starts with, when a ":" or a space follows that name (so GCH-0690 is not GCH-069).
local function psrplot_agent_color(name, agent_colors)
    if agent_colors[name] ~= nil then
        return agent_colors[name];
    end
    local color, length = nil, 0;
    for agent, agent_color in pairs(agent_colors) do
        local size = #agent;
        if size > length and name:sub(1, size) == agent then
            local next_char = name:sub(size + 1, size + 1);
            if next_char == ":" or next_char == " " then
                color, length = agent_color, size;
            end
        end
    end
    return color;
end

-- Copy of the options for the series of e1. agent_colors (agent name -> color) is resolved against e1's
-- series names into series_colors, which psrplot.js applies by series name; a series without its own
-- color keeps the general color (options.color) or, without one, the default palette.
local function psrplot_colors(e1, options)
    local result = {};
    for key, value in pairs(options or {}) do
        result[key] = value;
    end

    local agent_colors = result.agent_colors;
    result.agent_colors = nil;
    if result.color == "" then
        result.color = nil;
    end

    if agent_colors == nil or next(agent_colors) == nil or not e1:loaded() then
        return result;
    end

    local series_colors = {};
    for _, name in ipairs(e1:agents()) do
        local color = psrplot_agent_color(name, agent_colors);
        if color ~= nil and color ~= "" then
            series_colors[name] = color;
        end
    end
    if next(series_colors) ~= nil then
        result.series_colors = series_colors;
    end
    return result;
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
            self:add_block_category(tag, e1, psrplot_colors(e1, options));

        else
            for scenario = 1, e1:scenarios() do
                local scenario_index = e1:scenario_index(scenario);
                local selected_scenario = e1:select_scenario(scenario):add_suffix(" (scenario:" .. scenario_index .. ")");
                self:add_block_category(tag, selected_scenario, psrplot_colors(selected_scenario, options));
            end
        end
    else 
        self:add(tag, e1, psrplot_colors(e1, options));
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
    options = psrplot_colors(lower, options);

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
