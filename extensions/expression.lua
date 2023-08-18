function Expression.add_prefix(self, prefix)
    local tag = "ADD_PREFIX";

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
    local tag = "ADD_SUFFIX";

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
    local tag = "AGGREGATE_AGENTS_BY_LABEL";

    if not self:loaded() then
        warning(tag .. ": null at " .. PSR.source_line(2));
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
    local tag = "REMOVE_AGENT";

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
    local tag = "REMOVE_ZEROS";

    if not self:loaded() then
        warning(tag .. ": null at " .. PSR.source_line(2));
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
    local tag = "RENAME_AGENTS_WITH_CODES";

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
    local tag = "REMOVE_AGENT_BY_CODE";

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
    local tag = "SELECT_AGENT";

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
    local tag = "SELECT_STAGE";

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
    local tag = "SELECT_AGENT_BY_CODE";

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
    local tag = "ORDER_AGENTS";

    if not self:loaded() then
        warning(tag .. ": null at " .. PSR.source_line(2));
        return self;
    end

    if agents == nil then
        error(tag .. ": agents must not be nil");
    end

    if type(agents) ~= "table" then
        error(tag .. ": agents must be a table");
    end

    local data = {};
    for _, agent in ipairs(agents) do
        table.insert(data, self:select_agent(agent));
    end

    return concatenate(data);
end

function Expression.select_and_rename_agent(self, agent, label)
    local tag = "SELECT_AND_RENAME_AGENT";

    if not self:loaded() then
        warning(tag .. ": null at " .. PSR.source_line(2));
        return self;
    end

    return self:select_agent(agent):rename_agent(label);
end

function Expression.add_agents_left(self, ...)
    local tag = "ADD_AGENTS_LEFT";

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
    local tag = "ADD_AGENTS_RIGHT";

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

function Expression.select_agents_with_prefix(self,str)
    local tag = "SELECT_AGENTS_WITH_PREFIX";

    if not self:loaded() then
        warning(tag .. ": null at " .. PSR.source_line(2));
        return self;
    end

    if str == nil then
        error(tag .. ": prefix string must not be nil");
    end

    local lenth_str = string.len(str);

    local found_agents = {};
    local agents = self:agents();
    for _,agent in ipairs(agents) do
        if (string.sub(agent, 1, lenth_str) == str) then
            table.insert(found_agents,agent)
        end
    end
    return self:select_agents(found_agents)
end

function Expression.remove_stages(self,vec_stages)
    local tag = "REMOVE STAGES";

    if not self:loaded() then
        warning(tag .. ": null at " .. PSR.source_line(2));
        return self;
    end
    
    if vec_stages == nil then
        error(tag .. ": stages vector must not be nil");
    end

    warning(tag .. ": data will lose chronology");

    local inital_stage = self:inital_stage();
    local last_stage   = self:last_stage();

    local vec_selc_stag = {};
    for stg = inital_stage,last_stage do
        for _,stg_v in ipairs(vec_stages) do
            if( stg == stg_v ) then
                goto stg_found
            end
        end
        table.insert(vec_selc_stag,self:select_stages({stg}));
        ::stg_found::
    end

    return concatenate_stages(vec_selc_stag)

end

function Expression.replace_stages(self,data_rep,vec_stages)
    local tag = "REPLACE STAGES";

    if not self:loaded() then
        warning(tag .. ": null at " .. PSR.source_line(2));
        return self;
    end

    if vec_stages == nil then
        error(tag .. ": stages vector must not be nil");
    end

    if not data_rep:loaded() then
        warning(tag .. ": data to replace must not be nil");
        return self;
    end

    if data_rep:stages() ~= 1 then
        warning(tag .. ": data to replace must have just 1 stage");
        return self;
    end

    local inital_stage = self:inital_stage();
    local last_stage   = self:last_stage();

    local vec_selc_stag = {};
    for stg = inital_stage,last_stage do
        for _,stg_v in ipairs(vec_stages) do
            if( stg == stg_v ) then
                table.insert(vec_selc_stag,data_rep);
                goto stg_found
            end
        end
        table.insert(vec_selc_stag,self:select_stages({stg}));
        ::stg_found::
    end

    return concatenate_stages(vec_selc_stag)

end