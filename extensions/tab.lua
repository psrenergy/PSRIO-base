function Tab.push(self, input_element)
    local element_type = type(input_element);

    if element_type == "userdata" then
        local userdate_type = input_element:get_type();
        if userdate_type == "TAB" then
            self:push_tab(input_element);
        elseif userdate_type == "CHART" then
            self:push_chart(input_element);
        elseif userdate_type == "SPREADSHEET" then
            self:push_spreadsheet(input_element);
        elseif userdate_type == "MARKDOWN" then
            self:push_markdown_element(input_element);
        else
            warn("Userdata element not expected");
        end
    elseif element_type == "table" then
        if #input_element > 0 then
            local fist_element_type = type(input_element[1]); -- colocar protecao para um vetor com varios elementos diferentes?
            if fist_element_type == "CHART" then
                self:push_charts(input_element);
                -- elseif fist_element_type == "SPREADSHEET" then
                --     self:push_spreadsheet(input_element);
            else
                warn("Userdata vector elements not expected");
            end
        else
            warn("NULL vector");
        end
    elseif element_type == "string" then
        self:push_markdown_string(input_element);
    else
        warn("Unexpected element");
    end
end

function Tab.push_table(self, input)
    if input == nil then
        error("Input must not be nil");
    end

    local markdown<const> = Markdown();
    markdown:add_table(input);
    self:push(markdown);
end
