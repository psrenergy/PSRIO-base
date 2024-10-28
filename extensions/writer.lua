function Writer.write_line(self, input)
    if input == nil then
        self:write("\n");
    else
        self:write(input .. "\n");
    end
end
