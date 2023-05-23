function Expression.add_prefix(self, prefix)
    local tag = "ADD_PREFIX";

    if not self:loaded() then
        warning(tag .. ": null");
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
    local tag = "ADD_SUFFIX";

    if not self:loaded() then
        warning(tag .. ": null");
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
    local tag = "AGGREGATE_AGENTS_BY_LABEL";

    if not self:loaded() then
        warning(tag .. ": null");
        return self;
    end

    if aggregation == nil then
        error(tag .. ": aggregation must not be nil");
    end

    -- build dictionary with unique agent names
    local agents = self:agents();

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
    local tag = "CLAMP";

    if not self:loaded() then
        warning(tag .. ": null");
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
    local tag = "REMOVE_AGENT";

    if not self:loaded() then
        warning(tag .. ": null");
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
    local tag = "REMOVE_ZEROS";

    if not self:loaded() then
        warning(tag .. ": null");
        return self;
    end

    if not self:loaded() then
        error(tag .. ": null");
    end

    return self:select_agents(self:ne(0));
end

function Expression.rename_agent(self, agent)
    local tag = "RENAME_AGENT";

    if not self:loaded() then
        warning(tag .. ": null");
        return self;
    end

    if agent == nil then
        error(tag .. ": agent must not be nil");
    end

    return self:rename_agents({ agent });
end

function Expression.rename_agents_with_codes(self)
    local tag = "RENAME_AGENTS_WITH_CODES";

    if not self:loaded() then
        warning(tag .. ": null");
        return self;
    end

    local agents = {};
    for i, code in ipairs(self:codes()) do
        table.insert(agents, tostring(code));
    end

    return self:rename_agents(agents);
end

function Expression.remove_agent_by_code(self, code)
    local tag = "REMOVE_AGENT_BY_CODE";

    if not self:loaded() then
        warning(tag .. ": null");
        return self;
    end

    if code == nil then
        error(tag .. ": code must not be nil");
    end

    return self:remove_agents_by_code({ code });
end

function Expression.select_agent(self, agent)
    local tag = "SELECT_AGENT";

    if not self:loaded() then
        warning(tag .. ": null");
        return self;
    end

    if agent == nil then
        error(tag .. ": agent must not be nil");
    end

    return self:select_agents({ agent });
end

function Expression.select_stage(self, stage)
    local tag = "SELECT_STAGE";

    if not self:loaded() then
        warning(tag .. ": null");
        return self;
    end

    if stage == nil then
        error(tag .. ": stage must not be nil");
    end

    return self:select_first_stage(stage):select_last_stage(stage);
end

function Expression.select_agent_by_code(self, code)
    local tag = "SELECT_AGENT_BY_CODE";

    if not self:loaded() then
        warning(tag .. ": null");
        return self;
    end

    if code == nil then
        error(tag .. ": code must not be nil");
    end

    return self:select_agents_by_code({ code });
end
