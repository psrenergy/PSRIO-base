function Chart.add_line_parallel(self, e1, options)
    self:add_parallel("line", e1, options);
end

function Chart.add_line_categories_parallel(self, e1, label, options)
    self:add_category_parallel("line", e1, label, options);
end

function Chart.add_line_block_categories_parallel(self, e1, options)
    options = (options or {});
    self:add_block_category_parallel("line", e1, options);
end

function Chart.add_column_block_categories_parallel(self, e1, options)
    options = (options or {});
    self:add_block_category_parallel("column", e1, options);
end

function Chart.add_line_exclude_zeros_parallel(self, e1, options)
    self:add_exclude_zeros_parallel("line", e1, options);
end

function Chart.add_line_stacking_parallel(self, e1, options)
    self:add_parallel("line_stacking", e1, options);
end

function Chart.add_line_stacking_categories_parallel(self, e1, label, options)
    self:add_category_parallel("line_stacking", e1, label, options);
end

function Chart.add_line_stacking_exclude_zeros_parallel(self, e1, options)
    self:add_exclude_zeros_parallel("line_stacking", e1, options);
end

function Chart.add_spline_parallel(self, e1, options)
    self:add_parallel("spline", e1, options);
end

function Chart.add_spline_categories_parallel(self, e1, label, options)
    self:add_category_parallel("spline", e1, label, options);
end

function Chart.add_waterfall_categories_parallel(self, e1, label, options)
    self:add_category_parallel("waterfall", e1, label, options);
end

function Chart.add_spline_exclude_zeros_parallel(self, e1, options)
    self:add_exclude_zeros_parallel("spline", e1, options);
end

function Chart.add_column_parallel(self, e1, options)
    self:add_parallel("column", e1, options);
end

function Chart.add_column_categories_parallel(self, e1, label, options)
    self:add_category_parallel("column", e1, label, options);
end

function Chart.add_categories_parallel(self, e1, label, options) --TODO: isso vai morrer
    self:add_category_parallel("column", e1, label, options);
end

function Chart.add_box_plot_categories_parallel(self, e1, e2, e3, e4, e5, label, options)
    self:add_category_parallel("box_plot", e1, e2, e3, e4, e5, label, options);
end

function Chart.add_errorbar_categories_parallel(self, e1, e2, label, options)
    self:add_category_parallel("errorbar", e1, e2, label, options);
end

function Chart.add_column_stacking_parallel(self, e1, options)
    self:add_parallel("column_stacking", e1, options);
end

function Chart.add_column_stacking_categories_parallel(self, e1, label, options)
    self:add_category_parallel("column_stacking", e1, label, options);
end

function Chart.add_column_percent_parallel(self, e1, options)
    self:add_parallel("column_percent", e1, options);
end

function Chart.add_column_percent_categories_parallel(self, e1, label, options)
    self:add_category_parallel("column_percent", e1, label, options);
end

function Chart.add_column_range_parallel(self, e1, e2, options)
    self:add_parallel("column_range", e1, e2, options);
end

function Chart.add_area_parallel(self, e1, options)
    self:add_parallel("area", e1, options);
end

function Chart.add_area_stacking_parallel(self, e1, options)
    self:add_parallel("area_stacking", e1, options);
end

function Chart.add_area_percent_parallel(self, e1, options)
    self:add_parallel("area_percent", e1, options);
end

function Chart.add_area_range_parallel(self, e1, e2, options)
    self:add_parallel("area_range", e1, e2, options);
end

function Chart.add_area_spline_parallel(self, e1, options)
    self:add_parallel("area_spline", e1, options);
end

function Chart.add_area_spline_stacking_parallel(self, e1, options)
    self:add_parallel("area_spline_stacking", e1, options);
end

function Chart.add_area_spline_percent_parallel(self, e1, options)
    self:add_parallel("area_spline_percent", e1, options);
end

function Chart.add_area_spline_range_parallel(self, e1, e2, options)
    self:add_parallel("area_spline_range", e1, e2, options);
end

function Chart.add_error_bar_parallel(self, e1, e2, options)
    self:add_parallel("error_bar", e1, e2, options);
end

function Chart.add_pie_parallel(self, e1, options)
    self:add_parallel("pie", e1, options);
end

function Chart.add_box_plot_parallel(self, e1, e2, e3, e4, e5, options)
    self:add_parallel("box_plot", e1, e2, e3, e4, e5, options);
end

function Chart.add_waterfall_parallel(self, e1, options)
    self:add_parallel("waterfall", e1, options);
end
