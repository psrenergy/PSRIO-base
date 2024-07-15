function Expression.add_prefix(self, prefix)
    local tag<const> = "ADD_PREFIX";

    info(tag .. ": " .. self:data_info());

    if not self:loaded() then
        warning(tag .. ": null at " .. PSR.source_line(2));
        return self;
    end

    if prefix == nil then
        error(tag .. ": prefix must not be nil");
    end

    local original_console_verbose = PSR.console_verbose_level();
    PSR.console_verbose_level(0);

    local agents = self:agents();
    for i, agent in ipairs(agents) do
        agents[i] = prefix .. agent;
    end
    local output = self:rename_agents(agents);

    PSR.console_verbose_level(original_console_verbose);
    info(tag .. "= " .. output:data_info());

    return output;
end

function Expression.add_suffix(self, suffix)
    local tag<const> = "ADD_SUFFIX";

    info(tag .. ": " .. self:data_info());

    if not self:loaded() then
        warning(tag .. ": null at " .. PSR.source_line(2));
        return self;
    end

    if suffix == nil then
        error(tag .. ": suffix must not be nil");
    end

    local original_console_verbose = PSR.console_verbose_level();
    PSR.console_verbose_level(0);
    local agents = self:agents();
    for i, agent in ipairs(agents) do
        agents[i] = agent .. suffix;
    end
    local output = self:rename_agents(agents);
    PSR.console_verbose_level(original_console_verbose);

    info(tag .. "= " .. output:data_info());
    return output;
end

function Expression.add_suffixes(self, suffixes)
    local tag<const> = "ADD_SUFFIXES";

    info(tag .. ": " .. self:data_info());

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

    local original_console_verbose = PSR.console_verbose_level();
    PSR.console_verbose_level(0);
    local agents = self:agents();
    for i, agent in ipairs(agents) do
        agents[i] = agent .. suffixes[i];
    end
    local output = self:rename_agents(agents);
    PSR.console_verbose_level(original_console_verbose);

    info(tag .. "= " .. output:data_info());
    return output;
end

function Expression.aggregate_agents_by_label(self, aggregation)
    local tag<const> = "AGGREGATE_AGENTS_BY_LABEL";

    info(tag .. ": " .. self:data_info());

    if not self:loaded() then
        warning(tag .. ": null at " .. PSR.source_line(2));
        return self;
    end

    if aggregation == nil then
        error(tag .. ": aggregation must not be nil");
    end

    local original_console_verbose = PSR.console_verbose_level();
    PSR.console_verbose_level(0);

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
    PSR.console_verbose_level(original_console_verbose);

    info(tag .. "= " .. output:data_info());
    return output;
end

function Expression.clamp(self, low, hi)
    local tag<const> = "CLAMP";

    info(tag .. ": " .. self:data_info());

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

    local original_console_verbose = PSR.console_verbose_level();
    PSR.console_verbose_level(0);

    local output = min(max(self, low), hi);
    PSR.console_verbose_level(original_console_verbose);

    info(tag .. "= " .. output:data_info());
    return output;
end

function Expression.remove_agent(self, agent)
    local tag<const> = "REMOVE_AGENT";

    info(tag .. ": " .. self:data_info());

    if not self:loaded() then
        warning(tag .. ": null at " .. PSR.source_line(2));
        return self;
    end

    if agent == nil then
        error(tag .. ": agent must not be nil");
    end

    local original_console_verbose = PSR.console_verbose_level();
    PSR.console_verbose_level(0);

    local output = self:remove_agents({ agent });
    PSR.console_verbose_level(original_console_verbose);

    info(tag .. "= " .. output:data_info());
    return output;
end

function Expression.remove_zeros(self)
    local tag<const> = "REMOVE_ZEROS";

    info(tag .. ": " .. self:data_info());

    if not self:loaded() then
        warning(tag .. ": null at " .. PSR.source_line(2));
        return self;
    end

    local original_console_verbose = PSR.console_verbose_level();
    PSR.console_verbose_level(0);

    local output = self:select_agents(self);
    PSR.console_verbose_level(original_console_verbose);

    info(tag .. "= " .. output:data_info());
    return output;
end

function Expression.rename_agent(self, agent)
    local tag<const> = "RENAME_AGENT";

    info(tag .. ": " .. self:data_info());

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

    local original_console_verbose = PSR.console_verbose_level();
    PSR.console_verbose_level(0);

    local output = self:rename_agents({ agent });
    PSR.console_verbose_level(original_console_verbose);

    info(tag .. "= " .. output:data_info());
    return output;
end

function Expression.rename_agents_with_codes(self)
    local tag<const> = "RENAME_AGENTS_WITH_CODES";

    info(tag .. ": " .. self:data_info());

    if not self:loaded() then
        warning(tag .. ": null at " .. PSR.source_line(2));
        return self;
    end

    local original_console_verbose = PSR.console_verbose_level();
    PSR.console_verbose_level(0);

    local agents = {};
    for _, code in ipairs(self:codes()) do
        table.insert(agents, tostring(code));
    end

    local output = self:rename_agents(agents);
    PSR.console_verbose_level(original_console_verbose);

    info(tag .. "= " .. output:data_info());
    return output;
end

function Expression.remove_agent_by_code(self, code)
    local tag<const> = "REMOVE_AGENT_BY_CODE";

    info(tag .. ": " .. self:data_info());

    if not self:loaded() then
        warning(tag .. ": null at " .. PSR.source_line(2));
        return self;
    end

    if code == nil then
        error(tag .. ": code must not be nil");
    end

    local original_console_verbose = PSR.console_verbose_level();
    PSR.console_verbose_level(0);

    local output = self:remove_agents_by_code({ code });
    PSR.console_verbose_level(original_console_verbose);

    info(tag .. "= " .. output:data_info());
    return output;
end

function Expression.select_agent(self, agent)
    local tag<const> = "SELECT_AGENT";

    info(tag .. ": " .. self:data_info());

    if not self:loaded() then
        warning(tag .. ": null at " .. PSR.source_line(2));
        return self;
    end

    if agent == nil then
        error(tag .. ": agent must not be nil");
    end

    local original_console_verbose = PSR.console_verbose_level();
    PSR.console_verbose_level(0);

    local output = self:select_agents({ agent });
    PSR.console_verbose_level(original_console_verbose);

    if self:loaded() then
        info(tag .. "= " .. output:data_info());
    else
        warning(self:data_info() ..  ": didnt find agent (searched agents: " .. agent .. ") at " .. PSR.source_line(2));
    end

    return output;
end

function Expression.select_stage(self, stage)
    local tag<const> = "SELECT_STAGE";

    info(tag .. ": " .. self:data_info());

    if not self:loaded() then
        warning(tag .. ": null at " .. PSR.source_line(2));
        return self;
    end

    if stage == nil then
        error(tag .. ": stage must not be nil");
    end

    local original_console_verbose = PSR.console_verbose_level();
    PSR.console_verbose_level(0);

    local output = self:select_first_stage(stage):select_last_stage(stage);
    PSR.console_verbose_level(original_console_verbose);

    info(tag .. "= " .. output:data_info());
    return output;
end

function Expression.select_agent_by_code(self, code)
    local tag<const> = "SELECT_AGENT_BY_CODE";

    info(tag .. ": " .. self:data_info());

    if not self:loaded() then
        warning(tag .. ": null at " .. PSR.source_line(2));
        return self;
    end

    if code == nil then
        error(tag .. ": code must not be nil");
    end

    local original_console_verbose = PSR.console_verbose_level();
    PSR.console_verbose_level(0);

    local output = self:select_agents_by_code({ code });
    PSR.console_verbose_level(original_console_verbose);

    info(tag .. "= " .. output:data_info());
    return output;
end

function Expression.reorder_agents(self, agents)
    local tag<const> = "REORDER_AGENTS";

    info(tag .. ": " .. self:data_info());

    if not self:loaded() then
        warning(tag .. ": null at " .. PSR.source_line(2));
        return self;
    end

    if agents == nil then
        error(tag .. ": agents must not be nil");
    end

    local original_console_verbose = PSR.console_verbose_level();
    PSR.console_verbose_level(0);

    local data = {};
    for _, agent in ipairs(agents) do
        table.insert(data, self:select_agent(agent));
    end

    local output = concatenate(data);
    PSR.console_verbose_level(original_console_verbose);

    info(tag .. "= " .. output:data_info());
    return output;
end

function Expression.select_and_rename_agent(self, agent, label)
    local tag<const> = "SELECT_AND_RENAME_AGENT";

    info(tag .. ": " .. self:data_info());

    if not self:loaded() then
        warning(tag .. ": null at " .. PSR.source_line(2));
        return self;
    end

    local original_console_verbose = PSR.console_verbose_level();
    PSR.console_verbose_level(0);

    local output = self:select_agent(agent):rename_agent(label);
    PSR.console_verbose_level(original_console_verbose);

    info(tag .. "= " .. output:data_info());
    return output;
end

function Expression.add_agents_left(self, ...)
    local tag<const> = "ADD_AGENTS_LEFT";

    info(tag .. ": " .. self:data_info());

    if not self:loaded() then
        warning(tag .. ": null at " .. PSR.source_line(2));
        return self;
    end

    local original_console_verbose = PSR.console_verbose_level();
    PSR.console_verbose_level(0);

    local output = self;
    local labels = { ... };
    for i = #labels, 1, -1 do
        output = output:add_agent_left(labels[i]);
    end

    PSR.console_verbose_level(original_console_verbose);

    info(tag .. "= " .. output:data_info());
    return output;
end

function Expression.add_agents_right(self, ...)
    local tag<const> = "ADD_AGENTS_RIGHT";

    info(tag .. ": " .. self:data_info());

    if not self:loaded() then
        warning(tag .. ": null at " .. PSR.source_line(2));
        return self;
    end

    local original_console_verbose = PSR.console_verbose_level();
    PSR.console_verbose_level(0);

    local output = self;
    local labels = { ... };
    for i = 1, #labels do
        output = output:add_agent_right(labels[i]);
    end

    PSR.console_verbose_level(original_console_verbose);

    info(tag .. "= " .. output:data_info());
    return output;
end

function Expression.remove_stages(self, stages)
    local tag<const> = "REMOVE_STAGES";

    info(tag .. ": " .. self:data_info());

    if not self:loaded() then
        warning(tag .. ": null at " .. PSR.source_line(2));
        return self;
    end

    if stages == nil then
        error(tag .. ": stages vector must not be nil");
    end

    local original_console_verbose = PSR.console_verbose_level();
    PSR.console_verbose_level(0);

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
    PSR.console_verbose_level(original_console_verbose);

    info(tag .. "= " .. output:data_info());
    return output;
end

function Expression.replace_stages(self, source, stages)
    local tag<const> = "REPLACE_STAGES";

    info(tag .. ": " .. self:data_info());

    if not self:loaded() or not source:loaded() then
        warning(tag .. ": null at " .. PSR.source_line(2));
        return self;
    end

    if stages == nil then
        error(tag .. ": stages vector must not be nil");
    end

    local original_console_verbose = PSR.console_verbose_level();
    PSR.console_verbose_level(0);

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
    PSR.console_verbose_level(original_console_verbose);

    info(tag .. "= " .. output:data_info());
    return output;
end

function Expression.replace_scenarios(self, source, scenarios)
    local tag<const> = "REPLACE_SCENARIOS";

    info(tag .. ": " .. self:data_info());

    if not self:loaded() or not source:loaded() then
        warning(tag .. ": null at " .. PSR.source_line(2));
        return self;
    end

    local original_console_verbose = PSR.console_verbose_level();
    PSR.console_verbose_level(0);

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
    PSR.console_verbose_level(original_console_verbose);

    info(tag .. "= " .. output:data_info());
    return output;
end

function Expression.aggregate_stages_weighted(self, by, weights, profile)
    local tag<const> = "AGGREGATE_STAGES_WEIGHTED";

    info(tag .. ": " .. self:data_info());

    if not self:loaded() or not weights:loaded() then
        warning(tag .. ": null at " .. PSR.source_line(2));
        return self;
    end

    local original_console_verbose = PSR.console_verbose_level();

    local output;
    if profile then
        if type(profile) ~= "number" then
            error(tag .. ": profile must be a Profile");
        end
        PSR.console_verbose_level(0);
        output = (self * weights):aggregate_stages(by, profile) / weights:aggregate_stages(by, profile);
    else
        PSR.console_verbose_level(0);
        output = (self * weights):aggregate_stages(by) / weights:aggregate_stages(by);
    end

    PSR.console_verbose_level(original_console_verbose);

    info(tag .. "= " .. output:data_info());
    return output;
end

function Expression.stage_profile_day(self, aggregation)
    local tag<const> = "STAGE_PROFILE_DAY";

    info(tag .. ": " .. self:data_info());

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

    local original_console_verbose = PSR.console_verbose_level();
    PSR.console_verbose_level(0);

    local first_stage = self:first_stage();
    local last_stage = self:last_stage();

    local stages = {};
    for stage = first_stage, last_stage do
        local data = self:select_stage(stage):reshape_stages(Profile.DAILY):aggregate_stages(aggregation or BY_AVERAGE());
        table.insert(stages, data);
    end

    local output = concatenate_stages(stages);
    PSR.console_verbose_level(original_console_verbose);

    info(tag .. "= " .. output:data_info());
    return output;
end

function Expression.select_outputs_stages(self)
    local tag<const> = "SELECT_OUTPUTS_STAGES";

    info(tag .. ": " .. self:data_info());

    if not self:loaded() then
        warning(tag .. ": null at " .. PSR.source_line(2));
        return self;
    end

    local original_console_verbose = PSR.console_verbose_level();
    PSR.console_verbose_level(0);

    local index = self:study_index();
    local last_stage = Study(index):stages_without_buffer_years();
    if Study(index):get_parameter("NumeroAnosAdicionaisParm2", -1) == 1 then
        last_stage = Study(index):stages();
    end

    local output = self:select_stages(1, last_stage);
    PSR.console_verbose_level(original_console_verbose);

    info(tag .. "= " .. output:data_info());
    return output;
end

function Expression.initial_date(self)
    local tag<const> = "INITIAL_DATE";

    info(tag .. ": " .. self:data_info());

    if not self:loaded() then
        warning(tag .. ": null at " .. PSR.source_line(2));
        return "";
    end

    local original_console_verbose = PSR.console_verbose_level();
    PSR.console_verbose_level(0);
    local first_stage = self:first_stage();
    local initial_year = self:year(first_stage);
    local initial_month = self:month(first_stage);
    local initial_day = self:day(first_stage);

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
    PSR.console_verbose_level(original_console_verbose);

    return output;
end

function Expression.final_date(self)
    local tag<const> = "FINAL_DATE";
    local month_days = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};

    if not self:loaded() then
        warning(tag .. ": null at " .. PSR.source_line(2));
        return "";
    end

    local original_console_verbose = PSR.console_verbose_level();
    PSR.console_verbose_level(0);
    local last_stage = self:last_stage();
    local final_year = self:year(last_stage);
    local final_month = self:month(last_stage);
    local final_day = self:day(last_stage);

    if self:is_hourly() then
        local hours_in_stage = self:blocks(last_stage);
        final_day = final_day + math.floor(hours_in_stage / 24) - 1;
        if final_day > month_days[final_month] then
            final_day = final_day - month_days[final_month];
            final_month = final_month + 1;
            if final_month > 12 then
                final_month = 1;
                final_year = final_year + 1;
            end
        end
    end
    
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
    PSR.console_verbose_level(original_console_verbose);

    return output;
end
