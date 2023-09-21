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
