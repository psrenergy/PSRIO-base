local function gerter2_per_bus(i, suffix)
    local thermal = Thermal(i or 1);
    local gerter2 = thermal:load("gerter2" .. (suffix or ""));
    return gerter2:aggregate_agents(BY_SUM(), Collection.BUS);
end
return gerter2_per_bus;
