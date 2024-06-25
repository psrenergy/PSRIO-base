function Expression.data_info_input(self, tag)
    info(tag .. ": " .. self:data_info());
end

function Expression.data_info_output(self, tag)
    info(tag .. "= " .. self:data_info());
end

function Expression.add_prefix(self, prefix)
    local tag<const> = "ADD_PREFIX";

    self:data_info_input(tag);

    if not self:loaded() then
        warning(tag .. ": null at " .. PSR.source_line(2));
        return self;
    end

    if prefix == nil then
        error(tag .. ": prefix must not be nil");
    end

    local original_console_verbose = console_verbose_level();
    console_verbose_level(0);

    local agents = self:agents();
    for i, agent in ipairs(agents) do
        agents[i] = prefix .. agent;
    end
    local output = self:rename_agents(agents);

    console_verbose_level(original_console_verbose);
    output:data_info_output(tag);

    return output;
end

function Expression.add_suffix(self, suffix)
    local tag<const> = "ADD_SUFFIX";

    self:data_info_input(tag);

    if not self:loaded() then
        warning(tag .. ": null at " .. PSR.source_line(2));
        return self;
    end

    if suffix == nil then
        error(tag .. ": suffix must not be nil");
    end

    local original_console_verbose = console_verbose_level();
    console_verbose_level(0);
    local agents = self:agents();
    for i, agent in ipairs(agents) do
        agents[i] = agent .. suffix;
    end
    local output = self:rename_agents(agents);
    console_verbose_level(original_console_verbose);

    output:data_info_output(tag);
    return output;
end

function Expression.add_suffixes(self, suffixes)
    local tag<const> = "ADD_SUFFIXES";

    self:data_info_input(tag);

    if not self:loaded() then
        warning(tag .. ": null at " .. PSR.source_line(2));
        return self;
    end

    if suffixes == nil then
        error(tag .. ": suffixes must not be nil");
    end

    if #suffixes <= 0 then
        return self;
    end

    if #suffixes ~= #self:agents() then
        error(tag .. ": suffixes vector and agents size are not the same");
    end

    local original_console_verbose = console_verbose_level();
    console_verbose_level(0);
    local agents = self:agents();
    for i, agent in ipairs(agents) do
        agents[i] = agent .. suffixes[i];
    end
    local output = self:rename_agents(agents);
    console_verbose_level(original_console_verbose);

    output:data_info_output(tag);
    return output;
end

function Expression.aggregate_agents_by_label(self, aggregation)
    local tag<const> = "AGGREGATE_AGENTS_BY_LABEL";

    self:data_info_input(tag);

    if not self:loaded() then
        warning(tag .. ": null at " .. PSR.source_line(2));
        return self;
    end

    if aggregation == nil then
        error(tag .. ": aggregation must not be nil");
    end

    local original_console_verbose = console_verbose_level();
    console_verbose_level(0);

    local agents<const> = self:agents();
    local dictionary = {};
    for i, agent in ipairs(agents) do
        if dictionary[agent] then
            table.insert(dictionary[agent], i);
        else
            dictionary[agent] = { i };
        end
    end

    local spairs = require("lua/spairs");
    local unique_agents = {};
    for agent, indices in spairs(dictionary) do
        table.insert(unique_agents, self:select_agents(indices):aggregate_agents(aggregation, agent));
    end

    local output = concatenate(unique_agents);
    console_verbose_level(original_console_verbose);

    output:data_info_output(tag);
    return output;
end

function Expression.clamp(self, low, hi)
    local tag<const> = "CLAMP";

    self:data_info_input(tag);

    if not self:loaded() then
        warning(tag .. ": null at " .. PSR.source_line(2));
        return self;
    end

    if low == nil then
        error(tag .. ": low must not be nil");
    end

    if hi == nil then
        error(tag .. ": hi must not be nil");
    end

    local original_console_verbose = console_verbose_level();
    console_verbose_level(0);

    local output = min(max(self, low), hi);
    console_verbose_level(original_console_verbose);

    output:data_info_output(tag);
    return output;
end

function Expression.remove_agent(self, agent)
    local tag<const> = "REMOVE_AGENT";

    self:data_info_input(tag);

    if not self:loaded() then
        warning(tag .. ": null at " .. PSR.source_line(2));
        return self;
    end

    if agent == nil then
        error(tag .. ": agent must not be nil");
    end

    local original_console_verbose = console_verbose_level();
    console_verbose_level(0);

    local output = self:remove_agents({ agent });
    console_verbose_level(original_console_verbose);

    output:data_info_output(tag);
    return output;
end

function Expression.remove_zeros(self)
    local tag<const> = "REMOVE_ZEROS";

    self:data_info_input(tag);

    if not self:loaded() then
        warning(tag .. ": null at " .. PSR.source_line(2));
        return self;
    end

    local original_console_verbose = console_verbose_level();
    console_verbose_level(0);

    local output = self:select_agents(self);
    console_verbose_level(original_console_verbose);

    output:data_info_output(tag);
    return output;
end

function Expression.rename_agent(self, agent)
    local tag<const> = "RENAME_AGENT";

    self:data_info_input(tag);

    if not self:loaded() then
        warning(tag .. ": null at " .. PSR.source_line(2));
        return self;
    end

    if agent == nil then
        error(tag .. ": agent must not be nil");
    end

    if self:agents_size() ~= 1 then
        error(tag .. ": expression has more than 1 agent at " .. PSR.source_line(2));
    end

    local original_console_verbose = console_verbose_level();
    console_verbose_level(0);

    local output = self:rename_agents({ agent });
    console_verbose_level(original_console_verbose);

    output:data_info_output(tag);
    return output;
end

function Expression.rename_agents_with_codes(self)
    local tag<const> = "RENAME_AGENTS_WITH_CODES";

    self:data_info_input(tag);

    if not self:loaded() then
        warning(tag .. ": null at " .. PSR.source_line(2));
        return self;
    end

    local original_console_verbose = console_verbose_level();
    console_verbose_level(0);

    local agents = {};
    for _, code in ipairs(self:codes()) do
        table.insert(agents, tostring(code));
    end

    local output = self:rename_agents(agents);
    console_verbose_level(original_console_verbose);

    output:data_info_output(tag);
    return output;
end

function Expression.remove_agent_by_code(self, code)
    local tag<const> = "REMOVE_AGENT_BY_CODE";

    self:data_info_input(tag);

    if not self:loaded() then
        warning(tag .. ": null at " .. PSR.source_line(2));
        return self;
    end

    if code == nil then
        error(tag .. ": code must not be nil");
    end

    local original_console_verbose = console_verbose_level();
    console_verbose_level(0);

    local output = self:remove_agents_by_code({ code });
    console_verbose_level(original_console_verbose);

    output:data_info_output(tag);
    return output;
end

function Expression.select_agent(self, agent)
    local tag<const> = "SELECT_AGENT";

    self:data_info_input(tag);

    if not self:loaded() then
        warning(tag .. ": null at " .. PSR.source_line(2));
        return self;
    end

    if agent == nil then
        error(tag .. ": agent must not be nil");
    end

    local original_console_verbose = console_verbose_level();
    console_verbose_level(0);

    local output = self:select_agents({ agent });
    console_verbose_level(original_console_verbose);

    output:data_info_output(tag);
    return output;
end

function Expression.select_stage(self, stage)
    local tag<const> = "SELECT_STAGE";

    self:data_info_input(tag);

    if not self:loaded() then
        warning(tag .. ": null at " .. PSR.source_line(2));
        return self;
    end

    if stage == nil then
        error(tag .. ": stage must not be nil");
    end

    local original_console_verbose = console_verbose_level();
    console_verbose_level(0);

    local output = self:select_first_stage(stage):select_last_stage(stage);
    console_verbose_level(original_console_verbose);

    output:data_info_output(tag);
    return output;
end

function Expression.select_agent_by_code(self, code)
    local tag<const> = "SELECT_AGENT_BY_CODE";

    self:data_info_input(tag);

    if not self:loaded() then
        warning(tag .. ": null at " .. PSR.source_line(2));
        return self;
    end

    if code == nil then
        error(tag .. ": code must not be nil");
    end

    local original_console_verbose = console_verbose_level();
    console_verbose_level(0);

    local output = self:select_agents_by_code({ code });
    console_verbose_level(original_console_verbose);

    output:data_info_output(tag);
    return output;
end

function Expression.reorder_agents(self, agents)
    local tag<const> = "REORDER_AGENTS";

    self:data_info_input(tag);

    if not self:loaded() then
        warning(tag .. ": null at " .. PSR.source_line(2));
        return self;
    end

    if agents == nil then
        error(tag .. ": agents must not be nil");
    end

    local original_console_verbose = console_verbose_level();
    console_verbose_level(0);

    local data = {};
    for _, agent in ipairs(agents) do
        table.insert(data, self:select_agent(agent));
    end

    local output = concatenate(data);
    console_verbose_level(original_console_verbose);

    output:data_info_output(tag);
    return output;
end

function Expression.select_and_rename_agent(self, agent, label)
    local tag<const> = "SELECT_AND_RENAME_AGENT";

    self:data_info_input(tag);

    if not self:loaded() then
        warning(tag .. ": null at " .. PSR.source_line(2));
        return self;
    end

    local original_console_verbose = console_verbose_level();
    console_verbose_level(0);

    local output = self:select_agent(agent):rename_agent(label);
    console_verbose_level(original_console_verbose);

    output:data_info_output(tag);
    return output;
end

function Expression.add_agents_left(self, ...)
    local tag<const> = "ADD_AGENTS_LEFT";

    self:data_info_input(tag);

    if not self:loaded() then
        warning(tag .. ": null at " .. PSR.source_line(2));
        return self;
    end

    local original_console_verbose = console_verbose_level();
    console_verbose_level(0);

    local expression = self;
    local labels = { ... };
    for i = #labels, 1, -1 do
        expression = expression:add_agent_left(labels[i]);
    end

    console_verbose_level(original_console_verbose);

    expression:data_info_output(tag);
    return expression;
end

function Expression.add_agents_right(self, ...)
    local tag<const> = "ADD_AGENTS_RIGHT";

    self:data_info_input(tag);

    if not self:loaded() then
        warning(tag .. ": null at " .. PSR.source_line(2));
        return self;
    end

    local original_console_verbose = console_verbose_level();
    console_verbose_level(0);

    local expression = self;
    local labels = { ... };
    for i = 1, #labels do
        expression = expression:add_agent_right(labels[i]);
    end

    console_verbose_level(original_console_verbose);

    expression:data_info_output(tag);
    return expression;
end

function Expression.remove_stages(self, stages)
    local tag<const> = "REMOVE_STAGES";

    self:data_info_input(tag);

    if not self:loaded() then
        warning(tag .. ": null at " .. PSR.source_line(2));
        return self;
    end

    if stages == nil then
        error(tag .. ": stages vector must not be nil");
    end

    local original_console_verbose = console_verbose_level();
    console_verbose_level(0);

    local selected = {};
    for _, stage in ipairs(stages) do
        selected[stage] = true;
    end

    local data = {};
    for stage = self:initial_stage(), self:last_stage() do
        if not selected[stage] then
            table.insert(data, self:select_stage(stage));
        end
    end

    local output = concatenate_stages(data);
    console_verbose_level(original_console_verbose);

    output:data_info_output(tag);
    return output;
end

function Expression.replace_stages(self, source, stages)
    local tag<const> = "REPLACE_STAGES";

    self:data_info_input(tag);

    if not self:loaded() or not source:loaded() then
        warning(tag .. ": null at " .. PSR.source_line(2));
        return self;
    end

    if stages == nil then
        error(tag .. ": stages vector must not be nil");
    end

    local original_console_verbose = console_verbose_level();
    console_verbose_level(0);

    local selected = {};
    for _, stage in ipairs(stages) do
        selected[stage] = true;
    end

    local initial_stage<const> = self:initial_stage();
    local last_stage<const> = self:last_stage();

    local data = {};
    for stage = initial_stage, last_stage do
        if selected[stage] then
            table.insert(data, source);
        else
            table.insert(data, self:select_stage(stage));
        end
    end

    local output = concatenate_stages(data);
    console_verbose_level(original_console_verbose);

    output:data_info_output(tag);
    return output;
end

function Expression.replace_scenarios(self, source, scenarios)
    local tag<const> = "REPLACE_SCENARIOS";

    self:data_info_input(tag);

    if not self:loaded() or not source:loaded() then
        warning(tag .. ": null at " .. PSR.source_line(2));
        return self;
    end

    local original_console_verbose = console_verbose_level();
    console_verbose_level(0);

    local selected = {};
    for _, scenario in ipairs(scenarios) do
        selected[scenario] = true;
    end

    local data = {};
    for scenario = 1, self:scenarios() do
        if selected[scenario] then
            table.insert(data, source:select_scenario(scenario));
        else
            table.insert(data, self:select_scenario(scenario));
        end
    end

    local output = concatenate_scenarios(data);
    console_verbose_level(original_console_verbose);

    output:data_info_output(tag);
    return output;
end

function Expression.aggregate_stages_weighted(self, by, weights, profile)
    local tag<const> = "AGGREGATE_STAGES_WEIGHTED";

    self:data_info_input(tag);

    if not self:loaded() or not weights:loaded() then
        warning(tag .. ": null at " .. PSR.source_line(2));
        return self;
    end

    local original_console_verbose = console_verbose_level();

    local output;
    if profile then
        if type(profile) ~= "number" then
            error(tag .. ": profile must be a Profile");
        end
        console_verbose_level(0);
        output = (self * weights):aggregate_stages(by, profile) / weights:aggregate_stages(by, profile);
    else
        console_verbose_level(0);
        output = (self * weights):aggregate_stages(by) / weights:aggregate_stages(by);
    end

    console_verbose_level(original_console_verbose);

    output:data_info_output(tag);
    return output;
end

function Expression.stage_profile_day(self, aggregation)
    local tag<const> = "STAGE_PROFILE_DAY";

    self:data_info_input(tag);

    if aggregation == nil then
        error(tag .. ": aggregation must not be nil");
    end

    if not self:loaded() then
        warning(tag .. ": null at " .. PSR.source_line(2));
        return self;
    end

    if not self:is_hourly() then
        error(tag .. ": expression must be hourly");
    end

    local original_console_verbose = console_verbose_level();
    console_verbose_level(0);

    local first_stage = self:first_stage();
    local last_stage = self:last_stage();

    local stages = {};
    for stage = first_stage, last_stage do
        local data = self:select_stage(stage):reshape_stages(Profile.DAILY):aggregate_stages(aggregation or BY_AVERAGE());
        table.insert(stages, data);
    end

    local output = concatenate_stages(stages);
    console_verbose_level(original_console_verbose);

    output:data_info_output(tag);
    return output;
end

function Expression.select_outputs_stages(self)
    local tag<const> = "SELECT_OUTPUTS_STAGES";

    self:data_info_input(tag);

    if not self:loaded() then
        warning(tag .. ": null at " .. PSR.source_line(2));
        return self;
    end

    local original_console_verbose = console_verbose_level();
    console_verbose_level(0);

    local index = self:study_index();
    local last_stage = Study(index):stages_without_buffer_years();
    if Study(index):get_parameter("NumeroAnosAdicionaisParm2", -1) == 1 then
        last_stage = Study(index):stages();
    end

    local output = self:select_stages(1, last_stage);
    console_verbose_level(original_console_verbose);

    output:data_info_output(tag);
    return output;
end

function Expression.initial_date(self)
    local tag<const> = "INITIAL_DATE";

    self:data_info_input(tag);

    if not self:loaded() then
        warning(tag .. ": null at " .. PSR.source_line(2));
        return "";
    end

    local original_console_verbose = console_verbose_level();
    console_verbose_level(0);
    local initial_year = self:year(1);
    local initial_month = self:month(1);
    local initial_day = self:day(1);

    local year = tostring(initial_year);
    local month = tostring(initial_month);
    if initial_month < 10 then
        month = "0" .. month;
    end
    local day = tostring(initial_day);
    if initial_day < 10 then
        day = "0" .. day;
    end

    local output = day .. "/" .. month .. "/" .. year;
    console_verbose_level(original_console_verbose);

    self:data_info_output(tag);
    return output;
end

function Expression.final_date(self)
    local tag<const> = "FINAL_DATE";

    self:data_info_input(tag);

    if not self:loaded() then
        warning(tag .. ": null at " .. PSR.source_line(2));
        return "";
    end

    local original_console_verbose = console_verbose_level();
    console_verbose_level(0);
    local stages = self:stages();
    local final_year = self:year(stages);
    local final_month = self:month(stages);
    local final_day = self:day(stages);

    local year = tostring(final_year);
    local month = tostring(final_month);
    if final_month < 10 then
        month = "0" .. month;
    end
    local day = tostring(final_day);
    if final_day < 10 then
        day = "0" .. day;
    end
    
    local output = day .. "/" .. month .. "/" .. year;
    console_verbose_level(original_console_verbose);

    self:data_info_output(tag);
    return output;
end
