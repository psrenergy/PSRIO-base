function Tab.push_table(self, input)
    if type(input) ~= "table" then
        error("Input must be a table");
    end

    if #input > 0 then
        for i = 1, #input do
            local line = "|";
            for j = 1, #input[i] do
                line = line .. " " .. input[i][j] .. " |";
            end
            self:push(line);

            if i == 1 then
                local header = "|";
                for j = 1, #input[i] do
                    header = header .. ":-:|";
                end
                self:push(header);
            end
        end
    end
end
