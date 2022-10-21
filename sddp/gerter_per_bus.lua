local function gerter_per_bus(i, suffix)
    local thermal = Thermal(i or 1);
    local gerter = thermal:load("gerter" .. (suffix or ""));
    return gerter:aggregate_agents(BY_SUM(), Collection.BUSES);
end
return gerter_per_bus;