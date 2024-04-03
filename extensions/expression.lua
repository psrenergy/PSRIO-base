function Expression.add_prefix(self, prefix)
    local tag<const> = "ADD_PREFIX";

    if not self:loaded() then
        warning(tag .. ": null at " .. PSR.source_line(2));
        return self;
    end

    if prefix == nil then
        error(tag .. ": prefix must not be nil");
    end

    local agents = self:agents();
    for i, agent in ipairs(agents) do
        agents[i] = prefix .. agent;
    end
    return self:rename_agents(agents);
end

function Expression.add_suffix(self, suffix)
    local tag<const> = "ADD_SUFFIX";

    if not self:loaded() then
        warning(tag .. ": null at " .. PSR.source_line(2));
        return self;
    end

    if suffix == nil then
        error(tag .. ": suffix must not be nil");
    end

    local agents = self:agents();
    for i, agent in ipairs(agents) do
        agents[i] = agent .. suffix;
    end
    return self:rename_agents(agents);
end

function Expression.aggregate_agents_by_label(self, aggregation)
    local tag<const> = "AGGREGATE_AGENTS_BY_LABEL";

    if not self:loaded() then
        warning(tag .. ": null at " .. PSR.source_line(2));
        return self;
    end

    if aggregation == nil then
        error(tag .. ": aggregation must not be nil");
    end

    -- build dictionary with unique agent names
    local agents<const> = self:agents();

    local dictionary = {};
    for i, agent in ipairs(agents) do
        if dictionary[agent] then
            table.insert(dictionary[agent], i);
        else
            dictionary[agent] = { i };
        end
    end

    -- aggregate agents
    local spairs = require("lua/spairs");

    local unique_agents = {};
    for agent, indices in spairs(dictionary) do
        table.insert(unique_agents, self:select_agents(indices):aggregate_agents(aggregation, agent));
    end

    return concatenate(unique_agents);
end

function Expression.clamp(self, low, hi)
    local tag<const> = "CLAMP";

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
    return min(max(self, low), hi);
end

function Expression.remove_agent(self, agent)
    local tag<const> = "REMOVE_AGENT";

    if not self:loaded() then
        warning(tag .. ": null at " .. PSR.source_line(2));
        return self;
    end

    if not self:loaded() then
        error(tag .. ": null");
    end

    if agent == nil then
        error(tag .. ": agent must not be nil");
    end

    return self:remove_agents({ agent });
end

function Expression.remove_zeros(self)
    local tag<const> = "REMOVE_ZEROS";

    if not self:loaded() then
        warning(tag .. ": null at " .. PSR.source_line(2));
        return self;
    end

    if not self:loaded() then
        error(tag .. ": null");
    end

    return self:select_agents(self);
end

function Expression.rename_agent(self, agent)
    local tag<const> = "RENAME_AGENT";

    if not self:loaded() then
        warning(tag .. ": null at " .. PSR.source_line(2));
        return self;
    end

    if agent == nil then
        error(tag .. ": agent must not be nil");
    end

    if self:agents_size() ~= 1 then
        error(tag .. ": expression have more than 1 agent at " .. PSR.source_line(2));
    end

    return self:rename_agents({ agent });
end

function Expression.rename_agents_with_codes(self)
    local tag<const> = "RENAME_AGENTS_WITH_CODES";

    if not self:loaded() then
        warning(tag .. ": null at " .. PSR.source_line(2));
        return self;
    end

    local agents = {};
    for i, code in ipairs(self:codes()) do
        table.insert(agents, tostring(code));
    end

    return self:rename_agents(agents);
end

function Expression.remove_agent_by_code(self, code)
    local tag<const> = "REMOVE_AGENT_BY_CODE";

    if not self:loaded() then
        warning(tag .. ": null at " .. PSR.source_line(2));
        return self;
    end

    if code == nil then
        error(tag .. ": code must not be nil");
    end

    return self:remove_agents_by_code({ code });
end

function Expression.select_agent(self, agent)
    local tag<const> = "SELECT_AGENT";

    if not self:loaded() then
        warning(tag .. ": null at " .. PSR.source_line(2));
        return self;
    end

    if agent == nil then
        error(tag .. ": agent must not be nil");
    end

    return self:select_agents({ agent });
end

function Expression.select_stage(self, stage)
    local tag<const> = "SELECT_STAGE";

    if not self:loaded() then
        warning(tag .. ": null at " .. PSR.source_line(2));
        return self;
    end

    if stage == nil then
        error(tag .. ": stage must not be nil");
    end

    return self:select_first_stage(stage):select_last_stage(stage);
end

function Expression.select_agent_by_code(self, code)
    local tag<const> = "SELECT_AGENT_BY_CODE";

    if not self:loaded() then
        warning(tag .. ": null at " .. PSR.source_line(2));
        return self;
    end

    if code == nil then
        error(tag .. ": code must not be nil");
    end

    return self:select_agents_by_code({ code });
end

function Expression.reorder_agents(self, agents)
    local tag<const> = "REORDER_AGENTS";

    if not self:loaded() then
        warning(tag .. ": null at " .. PSR.source_line(2));
        return self;
    end

    if agents == nil then
        error(tag .. ": agents must not be nil");
    end

    local data = {};
    for _, agent in ipairs(agents) do
        table.insert(data, self:select_agent(agent));
    end

    return concatenate(data);
end

function Expression.select_and_rename_agent(self, agent, label)
    local tag<const> = "SELECT_AND_RENAME_AGENT";

    if not self:loaded() then
        warning(tag .. ": null at " .. PSR.source_line(2));
        return self;
    end

    return self:select_agent(agent):rename_agent(label);
end

function Expression.add_agents_left(self, ...)
    local tag<const> = "ADD_AGENTS_LEFT";

    if not self:loaded() then
        warning(tag .. ": null at " .. PSR.source_line(2));
        return self;
    end

    local expression = self;

    local labels = { ... };
    for i = #labels, 1, -1 do
        expression = expression:add_agent_left(labels[i]);
    end

    return expression;
end

function Expression.add_agents_right(self, ...)
    local tag<const> = "ADD_AGENTS_RIGHT";

    if not self:loaded() then
        warning(tag .. ": null at " .. PSR.source_line(2));
        return self;
    end

    local expression = self;

    local labels = { ... };
    for i = 1, #labels do
        expression = expression:add_agent_right(labels[i]);
    end

    return expression;
end

function Expression.remove_stages(self, stages)
    local tag<const> = "REMOVE_STAGES";

    if not self:loaded() then
        warning(tag .. ": null at " .. PSR.source_line(2));
        return self;
    end

    if stages == nil then
        error(tag .. ": stages vector must not be nil");
    end

    local selected = {};
    for _, stage in ipairs(stages) do
        selected[stage] = true;
    end

    local data = {};
    for stage = self:inital_stage(), self:last_stage() do
        if not selected[stage] then
            table.insert(data, self:select_stage(stage));
        end
    end
    return concatenate_stages(data);
end

function Expression.replace_stages(self, source, stages)
    local tag<const> = "REPLACE_STAGES";

    if not self:loaded() or not source:loaded() then
        warning(tag .. ": null at " .. PSR.source_line(2));
        return self;
    end

    if stages == nil then
        error(tag .. ": stages vector must not be nil");
    end

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
    return concatenate_stages(data);
end

function Expression.replace_scenarios(self, source, scenarios)
    local tag<const> = "REPLACE_SCENARIOS";

    if not self:loaded() or not source:loaded() then
        warning(tag .. ": null at " .. PSR.source_line(2));
        return self;
    end

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
    return concatenate_scenarios(data);
end

function Expression.aggregate_stages_weighted(self, by, weights, profile)
    local tag<const> = "AGGREGATE_STAGES_WEIGHTED";

    if not self:loaded() or not weights:loaded() then
        warning(tag .. ": null at " .. PSR.source_line(2));
        return self;
    end

    if profile then
        if type(profile) ~= "number" then
            error(tag .. ": profile must be a Profile");
        end
        return (self * weights):aggregate_stages(by, profile) / weights:aggregate_stages(by, profile);
    else
        return (self * weights):aggregate_stages(by) / weights:aggregate_stages(by);
    end
end

function Expression.stage_profile_day(self, aggregation)
    local first_stage = self:first_stage();
    local last_stage = self:last_stage();

    local stages = {};
    for stage = first_stage, last_stage do
        local data = self:select_stage(stage):reshape_stages(Profile.DAILY):aggregate_stages(aggregation or BY_AVERAGE());
        table.insert(stages, data);
    end
    return concatenate_stages(stages);
end

-- function Expression.select_first_stage(self)
--     local tag<const> = "SELECT_FIRST_STAGE";

--     if not self:loaded() then
--         warning(tag .. ": null at " .. PSR.source_line(2));
--         return self;
--     end
--     return self:select_stage(self:first_stage());
-- end

-- function Expression.select_last_stage(self)
--     local tag<const> = "SELECT_LAST_STAGE";

--     if not self:loaded() then
--         warning(tag .. ": null at " .. PSR.source_line(2));
--         return self;
--     end
--     return self:select_stage(self:last_stage());
-- end

function Expression.rename_unique_agent(self, agent_name, substitute_name)
    local tag<const> = "REMANE_UNIT_AGENT";

    if not self:loaded() then
        warning(tag .. ": null at " .. PSR.source_line(2));
        return self;
    end

    if agent_name == nil then
        warning(tag .. ": agent name must not be nil");
        return self;
    end

    if substitute_name == nil then
        warning(tag .. ": substite name must not be nil");
        return self;
    end

    local data_selected_agent = self:select_agent(agent_name):rename_agents({ substitute_name });

    if not data_selected_agent:loaded() then
        warning(tag .. ": " .. agent_name .. " not found");
        return self;
    end

    local data_remoded_agent = self:remove_agent(agent_name);

    return concatenate(data_selected_agent, data_remoded_agent);
end
