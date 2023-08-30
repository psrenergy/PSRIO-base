function Markdown.add_table(self, input)
    if input == nil then
        error("Input must not be nil");
    end

    if type(input) ~= "table" then
        error("Input must be a table");
    end

    if #input > 0 then
        for i = 1, #input do
            local line = "|";
            for j = 1, #input[i] do
                line = line .. " " .. input[i][j] .. " |";
            end
            self:add(line);

            if i == 1 then
                local header = "|";
                for j = 1, #input[i] do
                    header = header .. ":-:|";
                end
                self:add(header);
            end
        end
    end
end
