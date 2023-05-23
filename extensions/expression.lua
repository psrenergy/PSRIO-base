function Expression.add_prefix(self, prefix)
    if not self:loaded() then
        error("ADD_PREFIX: null");
    end

    if prefix == nil then
        error("ADD_PREFIX: prefix must not be nil");
    end

    local agents = self:agents();
    for i, agent in ipairs(agents) do
        agents[i] = prefix .. agent;
    end
    return self:rename_agents(agents);
end

function Expression.add_suffix(self, suffix)
    if not self:loaded() then
        error("ADD_SUFFIX: null");
    end

    if suffix == nil then
        error("ADD_SUFFIX: suffix must not be nil");
    end

    local agents = self:agents();
    for i, agent in ipairs(agents) do
        agents[i] = agent .. suffix;
    end
    return self:rename_agents(agents);
end

function Expression.aggregate_agents_by_label(self, aggregation)
    if not self:loaded() then
        error("AGGREGATE_AGENTS_BY_LABEL: null");
    end

    if aggregation == nil then
        error("AGGREGATE_AGENTS_BY_LABEL: aggregation must not be nil");
    end

    local spairs = require("lua/spairs");
    local agents = self:agents();

    -- build dictionary with unique agent names
    local dictionary = {};
    for i, agent in spairs(agents) do
        if dictionary[agent] then
            table.insert(dictionary[agent], i);
        else
            dictionary[agent] = { i };
        end
    end

    -- aggregate agents
    local unique_agents = {};
    for agent, indices in pairs(dictionary) do
        table.insert(unique_agents, self:select_agents(indices):aggregate_agents(aggregation, agent));
    end

    return concatenate(unique_agents);
end

function Expression.clamp(self, low, hi)
    if not self:loaded() then
        error("CLAMP: null");
    end

    if low == nil then
        error("CLAMP: low must not be nil");
    end

    if hi == nil then
        error("CLAMP: hi must not be nil");
    end
    return min(max(self, low), hi);
end

function Expression.remove_agent(self, agent)
    if not self:loaded() then
        error("REMOVE_AGENT: null");
    end

    if agent == nil then
        error("REMOVE_AGENT: agent must not be nil");
    end

    return self:remove_agents({ agent });
end

function Expression.remove_zeros(self)
    if not self:loaded() then
        error("REMOVE_ZEROS: null");
    end

    return self:select_agents(self:ne(0));
end

function Expression.rename_agent(self, agent)
    if not self:loaded() then
        error("RENAME_AGENT: null");
    end

    if agent == nil then
        error("RENAME_AGENT: agent must not be nil");
    end

    return self:rename_agents({ agent });
end

function Expression.rename_agents_with_codes(self)
    if not self:loaded() then
        error("RENAME_AGENTS_WITH_CODES: null");
    end

    local agents = {};
    for i, code in ipairs(self:codes()) do
        table.insert(agents, tostring(code));
    end

    return self:rename_agents(agents);
end

function Expression.remove_agent_by_code(self, code)
    if not self:loaded() then
        error("REMOVE_AGENT_BY_CODE: null");
    end

    if code == nil then
        error("REMOVE_AGENT_BY_CODE: code must not be nil");
    end

    return self:remove_agents_by_code({ code });
end

function Expression.select_agent(self, agent)
    if not self:loaded() then
        error("SELECT_AGENT: null");
    end

    if agent == nil then
        error("SELECT_AGENT: agent must not be nil");
    end

    return self:select_agents({ agent });
end

function Expression.select_stage(self, stage)
    if not self:loaded() then
        error("SELECT_STAGE: null");
    end

    if stage == nil then
        error("SELECT_STAGE: stage must not be nil");
    end

    return self:select_first_stage(stage):select_last_stage(stage);
end

function Expression.select_agent_by_code(self, code)
    if not self:loaded() then
        error("SELECT_AGENT_BY_CODE: null");
    end

    if code == nil then
        error("SELECT_AGENT_BY_CODE: code must not be nil");
    end

    return self:select_agents_by_code({ code });
end
