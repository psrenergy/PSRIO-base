function Expression.add_prefix(self, prefix)
    if prefix == nil then
        error("Prefix must not be nil");
    end

    local agents = self:agents();
    for i, agent in ipairs(agents) do
        agents[i] = prefix .. agent;
    end
    return self:rename_agents(agents);
end

function Expression.add_suffix(self, suffix)
    if suffix == nil then
        error("Suffix must not be nil");
    end

    local agents = self:agents();
    for i, agent in ipairs(agents) do
        agents[i] = agent .. suffix;
    end
    return self:rename_agents(agents);
end

function Expression.aggregate_agents_by_label(self, aggregation)
    if aggregation == nil then
        error("Aggregation must not be nil");
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
    if low == nil then
        error("Low must not be nil");
    end
    if hi == nil then
        error("Hi must not be nil");
    end
    return min(max(self, low), hi);
end

function Expression.remove_agent(self, agent)
    if agent == nil then
        error("Agent must not be nil");
    end
    return self:remove_agents({ agent });
end

function Expression.remove_zeros(self)
    return self:select_agents(self:ne(0));
end

function Expression.rename_agent(self, agent)
    if agent == nil then
        error("Agent must not be nil");
    end
    return self:rename_agents({ agent });
end

function Expression.rename_agents_with_codes(self)
    local agents = {};
    for i, code in ipairs(self:codes()) do
        table.insert(agents, tostring(code));
    end
    return self:rename_agents(agents);
end

function Expression.remove_agent_by_code(self, code)
    if code == nil then
        error("Code must not be nil");
    end

    return self:remove_agents_by_code({ code });
end

function Expression.select_agent(self, agent)
    if agent == nil then
        error("Agent must not be nil");
    end
    return self:select_agents({ agent });
end

function Expression.select_stage(self, stage)
    if stage == nil then
        error("Stage must not be nil");
    end
    return self:select_first_stage(stage):select_last_stage(stage);
end

function Expression.select_agent_by_code(self, code)
    if code == nil then
        error("Code must not be nil");
    end

    return self:select_agents_by_code({ code });
end
