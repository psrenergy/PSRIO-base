function TabVue.push_table(self, input)
    if input == nil then
        error("Input must not be nil");
    end

    local markdown<const> = Markdown();
    markdown:add_table(input);
    self:push(markdown);
end

function TabVue.set_icon(self, icon_name, options)
    local options_ = (options or {});
    self:add_icon(icon_name, options_);
end