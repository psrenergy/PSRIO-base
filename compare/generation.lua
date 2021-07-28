local function generation(labels)
    local n = #labels;
    local report = Report("Generation", 1e-5);
    local dashboard = Dashboard("Generation");

    local hydro = {};
    local renewable = {};
    local thermal = {};
    
    for i=1,n,1 do
        table.insert(hydro, require_collection("Hydro", i));
        table.insert(renewable, require_collection("Renewable", i));
        table.insert(thermal, require_collection("Thermal", i));
    end

    local compare = Compare("gerhid");
    local chart = Chart("Hydro Generation");
    for i=1,n,1 do
        local output = hydro[i]:load("gerhid")
        compare:add(output);

        chart:add_line(output:aggregate_blocks(BY_SUM()):aggregate_scenarios(BY_AVERAGE()):aggregate_agents(BY_SUM(), labels[i]));
    end
    report:push(compare);
    dashboard:push(chart);

    local compare = Compare("gergnd");
    local chart = Chart("Renewable Generation");
    for i=1,n,1 do
        local output = renewable[i]:load("gergnd");
        compare:add(output);

        chart:add_line(output:aggregate_blocks(BY_SUM()):aggregate_scenarios(BY_AVERAGE()):aggregate_agents(BY_SUM(), labels[i]));
    end
    report:push(compare);
    dashboard:push(chart);

    local compare = Compare("gerter");
    local chart = Chart("Thermal Generation");
    for i=1,n,1 do
        local output = thermal[i]:load("gerter");
        compare:add(output);

        chart:add_line(output:aggregate_blocks(BY_SUM()):aggregate_scenarios(BY_AVERAGE()):aggregate_agents(BY_SUM(), labels[i]));
    end
    report:push(compare);
    dashboard:push(chart);

    return dashboard, report;
end
return generation;