function Chart.add_line(self, e1, options)
    self:add("line", e1, options);
end

function Chart.add_line_categories(self, e1, label, options)
    self:add_category("line", e1, label, options);
end

function Chart.add_block_categories(self, e1, label, options)
    self:add_block_category("line", e1, label, options);
end

function Chart.add_line_exclude_zeros(self, e1, options)
    self:add_exclude_zeros("line", e1, options);
end

function Chart.add_line_stacking(self, e1, options)
    self:add("line_stacking", e1, options);
end

function Chart.add_line_stacking_categories(self, e1, label, options)
    self:add_category("line_stacking", e1, label, options);
end

function Chart.add_line_stacking_exclude_zeros(self, e1, options)
    self:add_exclude_zeros("line_stacking", e1, options);
end

function Chart.add_spline(self, e1, options)
    self:add("spline", e1, options);
end

function Chart.add_spline_categories(self, e1, label, options)
    self:add_category("spline", e1, label, options);
end

function Chart.add_waterfall_categories(self, e1, label, options)
    self:add_category("waterfall", e1, label, options);
end

function Chart.add_spline_exclude_zeros(self, e1, options)
    self:add_exclude_zeros("spline", e1, options);
end

function Chart.add_column(self, e1, options)
    self:add("column", e1, options);
end

function Chart.add_column_categories(self, e1, label, options)
    self:add_category("column", e1, label, options);
end

function Chart.add_categories(self, e1, label, options) --TODO: isso vai morrer
    self:add_category("column", e1, label, options);
end

function Chart.add_box_plot_categories(self, e1, e2, e3, e4, e5, label, options)
    self:add_category("box_plot", e1, e2, e3, e4, e5, label, options);
end

function Chart.add_errorbar_categories(self, e1, e2, label, options)
    self:add_category("errorbar", e1, e2, label, options);
end

function Chart.add_column_stacking(self, e1, options)
    self:add("column_stacking", e1, options);
end

function Chart.add_column_stacking_categories(self, e1, label, options)
    self:add_category("column_stacking", e1, label, options);
end

function Chart.add_column_percent(self, e1, options)
    self:add("column_percent", e1, options);
end

function Chart.add_column_percent_categories(self, e1, label, options)
    self:add_category("column_percent", e1, label, options);
end

function Chart.add_column_range(self, e1, e2, options)
    self:add("column_range", e1, e2, options);
end

function Chart.add_area(self, e1, options)
    self:add("area", e1, options);
end

function Chart.add_area_stacking(self, e1, options)
    self:add("area_stacking", e1, options);
end

function Chart.add_area_percent(self, e1, options)
    self:add("area_percent", e1, options);
end

function Chart.add_area_range(self, e1, e2, options)
    self:add("area_range", e1, e2, options);
end

function Chart.add_area_spline(self, e1, options)
    self:add("area_spline", e1, options);
end

function Chart.add_area_spline_stacking(self, e1, options)
    self:add("area_spline_stacking", e1, options);
end

function Chart.add_area_spline_percent(self, e1, options)
    self:add("area_spline_percent", e1, options);
end

function Chart.add_area_spline_range(self, e1, e2, options)
    self:add("area_spline_range", e1, e2, options);
end

function Chart.add_error_bar(self, e1, e2, options)
    self:add("error_bar", e1, e2, options);
end

function Chart.add_pie(self, e1, options)
    self:add("pie", e1, options);
end

function Chart.add_box_plot(self, e1, e2, e3, e4, e5, options)
    self:add("box_plot", e1, e2, e3, e4, e5, options);
end

function Chart.add_thermal_merit_order_curve(self, generation, cost)
    if generation:stages() ~= 1 or cost:stages() ~= 1 then
        error("Thermal Merit Order Curve only works for a single or aggregated stages");
    end

    if generation:scenarios() ~= 1 or cost:scenarios() ~= 1 then
        error("Thermal Merit Order Curve only works for a single or aggregated scenarios");
    end

    if generation:has_blocks() or cost:has_blocks() then
        error("Thermal Merit Order Curve only works for a single or aggregated blocks");
    end

    if generation:collection() ~= Collection.THERMAL or cost:collection() ~= Collection.THERMAL then
        error("Thermal Merit Order Curve only works for thermal generation and cost");
    end

    if generation:study_index() ~= cost:study_index() then
        error("Thermal Merit Order Curve only works for the same study");
    end

    local study_index = generation:study_index();
    local study = Study(study_index);
    local thermal_to_fuel = study:get_relationship_map(Collection.THERMAL, Collection.FUEL);

    local fuel_colors = {};
    for _, fuels in pairs(thermal_to_fuel) do
        for _, fuel in ipairs(fuels) do
            fuel_colors[fuel] = "#000000";
        end
    end

    local colors = PSR.interpolate_colors("#ff0000", "#00ff00", "#0000ff", table.length(fuel_colors));

    local i = 1;
    for fuel, _ in pairs(fuel_colors) do
        fuel_colors[fuel] = colors[i];
        i = i + 1;
    end

    local sorted_cost = cost:sort_agents_ascending():save_cache();
    local sorted_cost_agents = sorted_cost:agents();

    local sorted_generation = generation:remove_zeros():reorder_agents(sorted_cost_agents):cumsum_agents():save_cache();

    for _, agent in ipairs(sorted_cost_agents) do
        local fuel_label = thermal_to_fuel[agent][1];
        local fuel_color = fuel_colors[fuel_label];

        local x = sorted_generation:select_agent(agent);
        local y = sorted_cost:select_agent(agent);

        local options = {
            color = fuel_color,
            showInLegend = false,
            marker = { symbol = "circle" },
            zIndex = 2,
            yMin = 0,
        };

        self:add_scatter(x, y, agent .. " (" .. fuel_label .. ")", options);
    end
end

function Chart.add_waterfall(self, e1, options)
    self:add("waterfall", e1, options);
end

function Chart.add_line_TODO(self, e1, options)
    local is_typical_day = e1:is_typical_day();
    
    if not options then
        options = {};
    end

    local initial_stage = e1:initial_stage();
    local final_stage = e1:last_stage();
    for stage = initial_stage, final_stage do
        local data = e1:select_stage(stage):force_hourly();
        
        local levels = e1:blocks(stage);
        if is_typical_day then
            levels = levels // 24;
        end

        for level = 1, levels do
            if is_typical_day then
                self:add_line(data:select_typical_day(level):add_suffix(" (typical day " .. level .. ")"), options);
            else
                self:add_line(data, options);
            end
        end

        options.sequence = stage;
    end

    self:enable_controls();
end
