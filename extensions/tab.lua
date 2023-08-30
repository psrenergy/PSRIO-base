function Tab.push_table(self, input)
    if input == nil then
        error("Input must not be nil");
    end

    local markdown = Markdown();
    markdown:add_table(input);
    self:push(markdown);
end
