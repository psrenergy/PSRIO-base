function Chart.add_line(self, expression1, options)
    self:add("line", expression1, options);
end

function Chart.add_line_exclude_zeros(self, expression1, options)
    self:add_exclude_zeros("line", expression1, options);
end

function Chart.add_line_stacking(self, expression1, options)
    self:add("line_stacking", expression1, options);
end

function Chart.add_line_stacking_exclude_zeros(self, expression1, options)
    self:add_exclude_zeros("line_stacking", expression1, options);
end

function Chart.add_spline(self, expression1, options)
    self:add("spline", expression1, options);
end

function Chart.add_spline_exclude_zeros(self, expression1, options)
    self:add_exclude_zeros("spline", expression1, options);
end

function Chart.add_column(self, expression1, options)
    self:add("column", expression1, options);
end

function Chart.add_column_stacking(self, expression1, options)
    self:add("column_stacking", expression1, options);
end

function Chart.add_column_percent(self, expression1, options)
    self:add("column_percent", expression1, options);
end

function Chart.add_column_range(self, expression1, expression2, options)
    self:add("column_range", expression1, expression2, options);
end

function Chart.add_area(self, expression1, options)
    self:add("area", expression1, options);
end

function Chart.add_area_stacking(self, expression1, options)
    self:add("area_stacking", expression1, options);
end

function Chart.add_area_percent(self, expression1, options)
    self:add("area_percent", expression1, options);
end

function Chart.add_area_range(self, expression1, expression2, options)
    self:add("area_range", expression1, expression2, options);
end

function Chart.add_area_spline(self, expression1, options)
    self:add("area_spline", expression1, options);
end

function Chart.add_area_spline_stacking(self, expression1, options)
    self:add("area_spline_stacking", expression1, options);
end

function Chart.add_area_spline_percent(self, expression1, options)
    self:add("area_spline_percent", expression1, options);
end

function Chart.add_area_spline_range(self, expression1, expression2, options)
    self:add("area_spline_range", expression1, expression2, options);
end

function Chart.add_error_bar(self, expression1, expression2, options)
    self:add("error_bar", expression1, expression2, options);
end

function Chart.add_pie(self, expression1, options)
    self:add("pie", expression1, options);
end

function Chart.add_box_plot(self, expression1, expression2, expression3, expression4, expression5, options)
    self:add("box_plot", expression1, expression2, expression3, expression4, expression5, options);
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
