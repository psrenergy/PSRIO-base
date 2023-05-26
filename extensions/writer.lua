function Writer.write_line(self, input)
    if input == nil then
        error("Input must not be nil");
    end

    if type(input) ~= "string" then
        error("Input must be a string");
    end

    self:write(input .. "\n");
end
