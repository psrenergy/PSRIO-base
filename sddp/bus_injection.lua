local function bus_injection(i, suffix)
    local battery = Battery(i or 1);
    local bus = Bus(i or 1);
    local dclink = DCLink(i or 1);
    local hydro = Hydro(i or 1);
    local renewable = Renewable(i or 1);
    local thermal = Thermal(i or 1);

    local thermal_generation_per_bus = thermal:load("gerter" .. (suffix or "")):convert("MW"):aggregate_agents(BY_SUM(), Collection.BUS);
    local injection = thermal_generation_per_bus;

    local hydro_generation_per_bus = hydro:load("gerhid" .. (suffix or "")):convert("MW"):aggregate_agents(BY_SUM(), Collection.BUS);
    if hydro_generation_per_bus:loaded() then
        injection = injection + hydro_generation_per_bus;
    end

    local renewable_generation_per_bus = renewable:load("gergnd" .. (suffix or "")):convert("MW"):aggregate_agents(BY_SUM(), Collection.BUS);
    if renewable_generation_per_bus:loaded() then
        injection = injection + renewable_generation_per_bus;
    end

    local battery_generation_per_bus = battery:load("gerbat" .. (suffix or "")):convert("MW"):aggregate_agents(BY_SUM(), Collection.BUS);
    if battery_generation_per_bus:loaded() then
        injection = injection + battery_generation_per_bus;
    end

    local dclink_flow = dclink:load("dclink" .. (suffix or "")):convert("MW");
    if dclink_flow:loaded() then
        injection = injection - dclink_flow:bus_from();
        injection = injection + dclink_flow:bus_to();
    end

    local deficit_per_bus = bus:load("defbus" .. (suffix or "")):convert("MW");
    if deficit_per_bus:loaded() then
        injection = injection + deficit_per_bus;
    end

    local generation_excess_per_bus = bus:load("excbus" .. (suffix or "")):convert("MW");
    if generation_excess_per_bus:loaded() then
        injection = injection - generation_excess_per_bus;
    end

    local demand_per_bus = bus:load("demxba" .. (suffix or "")):convert("MW");
    if demand_per_bus:loaded() then
        injection = injection - demand_per_bus;
    end

    -- TODO ADD PHASE SHIFTER

    return injection;
end

return bus_injection;
