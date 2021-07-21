local function generation(labels)
    local n = #labels;
    local dashboard = Dashboard("Generation");

    local battery = {};
    local hydro = {};
    local renewable = {};
    local system = {};
    local thermal = {};
    
    for i=1,n,1 do
        table.insert(battery, require_collection("Battery", i));
        table.insert(hydro, require_collection("Hydro", i));
        table.insert(renewable, require_collection("Renewable", i));
        table.insert(system, require_collection("System", i));
        table.insert(thermal, require_collection("Thermal", i));
    end

    local chart = Chart("Total Battery Generation");
    for i=1,n,1 do
        local gerbat = battery[i]:load("gerbat");

        if gerbat:loaded() then 
            chart:add_line(
                gerbat:aggregate_blocks(BY_SUM()):aggregate_scenarios(BY_AVERAGE()):aggregate_agents(BY_SUM(), labels[i]):convert("GWh")
            ); 
        end
    end
    dashboard:push(chart);  

    local chart = Chart("Total Hydro Generation");
    for i=1,n,1 do
        local gerhid = hydro[i]:load("gerhid");

        if gerhid:loaded() then 
            chart:add_line(
                gerhid:aggregate_blocks(BY_SUM()):aggregate_scenarios(BY_AVERAGE()):aggregate_agents(BY_SUM(), labels[i])
            ); 
        end
    end
    dashboard:push(chart);  

    local chart = Chart("Total Renewable Generation");
    for i=1,n,1 do
        local gergnd = renewable[i]:load("gergnd");

        if gergnd:loaded() then 
            chart:add_line(
                gergnd:aggregate_blocks(BY_SUM()):aggregate_scenarios(BY_AVERAGE()):aggregate_agents(BY_SUM(), labels[i])
            ); 
        end
    end
    dashboard:push(chart);  

    local chart = Chart("Total Thermal Generation");
    for i=1,n,1 do
        local gerter = thermal[i]:load("gerter");

        if gerter:loaded() then 
            chart:add_line(
                gerter:aggregate_blocks(BY_SUM()):aggregate_scenarios(BY_AVERAGE()):aggregate_agents(BY_SUM(), labels[i])
            ); 
        end
    end
    dashboard:push(chart);
    
    local chart = Chart("Deficit");
    for i=1,n,1 do
        local defcit = system[i]:load("defcit");

        if defcit:loaded() then 
            chart:add_line(
                defcit:aggregate_blocks(BY_SUM()):aggregate_scenarios(BY_AVERAGE()):aggregate_agents(BY_SUM(), labels[i])
            ); 
        end
    end
    dashboard:push(chart);

    return dashboard;
end
return generation;