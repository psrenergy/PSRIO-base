local function generation(labels)
    local n = #labels;
    local dashboard = Dashboard("Generation");

    local hydro = {};
    local renewable = {};
    local thermal = {};
    
    for i=1,n,1 do
        table.insert(hydro, require_collection("Hydro", i));
        table.insert(renewable, require_collection("Renewable", i));
        table.insert(thermal, require_collection("Thermal", i));
    end

    local chart_gerhid = Chart("Hydro Generation");
    for i=1,n,1 do
        local output = hydro[i]:load("gerhid")
            :aggregate_blocks(BY_SUM())
            :aggregate_scenarios(BY_AVERAGE())
            :aggregate_agents(BY_SUM(), labels[i]);

        if output:loaded() then chart_gerhid:add_line(output); end
    end
    dashboard:push(chart_gerhid);  

    local chart_gergnd = Chart("Renewable Generation");
    for i=1,n,1 do
        local output = renewable[i]:load("gergnd")        
            :aggregate_blocks(BY_SUM())
            :aggregate_scenarios(BY_AVERAGE())
            :aggregate_agents(BY_SUM(), labels[i]);

        if output:loaded() then chart_gergnd:add_line(output); end
    end
    dashboard:push(chart_gergnd);  

    local chart_gerter = Chart("Thermal Generation");
    for i=1,n,1 do
        local output = thermal[i]:load("gerter")        
            :aggregate_blocks(BY_SUM())
            :aggregate_scenarios(BY_AVERAGE())
            :aggregate_agents(BY_SUM(), labels[i]);

        if output:loaded() then chart_gerter:add_line(output); end
    end
    dashboard:push(chart_gerter);  

    return dashboard;
end
return generation;