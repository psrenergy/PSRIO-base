local trim = require("lua/trim");

local function historical_inflow(i)
    local hydro_gauging_station<const> = HydroGaugingStation(i or 1);
    local generic<const> = Generic(i or 1);

    local labels = hydro_gauging_station:labels();
    local codes = hydro_gauging_station:codes();

    local code_to_label = {};
    for j = 1, #hydro_gauging_station do
        code_to_label[codes[j]] = labels[j];
    end

    local reader = nil;
    if generic:file_exists("hinflw_w.dat") then
        reader = generic:create_reader("hinflw_w.dat");
    elseif generic:file_exists("hinflw.dat") then
        reader = generic:create_reader("hinflw.dat");
    end

    if not reader then
        error("No historical inflow data found");
    end

    local filename = "hinflow";
    local writer = generic:create_writer(filename .. ".csv");

    if writer:is_open() then
        local header = reader:get_line();
        local line_length = string.len(header);
        local agents_size = (line_length // 7) - 1;

        local initial_stage = trim(string.sub(header, 1, 2));
        local year = string.sub(header, 4, 8);

        writer:write_line("Varies per block?,1,Unit,m3/s,1," .. initial_stage .. "," .. year);
        writer:write_line("Varies per sequence?, 0");
        writer:write_line("# of agents," .. agents_size);

        writer:write("Stag,Scn.,Blck");
        for j = 1, agents_size do
            local code = tonumber(string.sub(header, j * 7 + 1, j * 7 + 7));
            local label = code_to_label[code];
            if label == nil then
                error("No label found for code " .. code);
            end
            writer:write("," .. code_to_label[code]);
        end
        writer:write_line();

        local stage = 1;
        while reader:good() do
            local row = reader:get_line();
            if string.len(row) == 0 then
                break
            end

            writer:write(stage .. ",1,1");

            for j = 1, agents_size do
                local data = string.sub(row, j * 7 + 1, j * 7 + 7);
                writer:write("," .. tonumber(data));
            end
            writer:write_line();

            stage = stage + 1;
        end

        reader:close();
        writer:close();
    end

    return hydro_gauging_station:load(filename);
end
return historical_inflow;
