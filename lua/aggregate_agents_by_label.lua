local function aggregate_agents_by_label(data, aggregation)
    local spairs = require("lua/spairs");
    local agents = data:agents();

    -- build dictionary with unique agent names
    local dictionary = {};
    for i, agent in spairs(agents) do
        if dictionary[agent] then
            table.insert(dictionary[agent], i);
        else
            dictionary[agent] = {i};
        end
    end

    -- aggregate agents
    local unique_agents = {};
    for agent, indices in pairs(dictionary) do
        table.insert(unique_agents, data:select_agents(indices):aggregate_agents(aggregation, agent));
    end

    return concatenate(unique_agents);
end
return aggregate_agents_by_label;
