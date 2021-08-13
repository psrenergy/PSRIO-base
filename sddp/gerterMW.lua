local function gerterMW(suffix)
    local thermal = Thermal();
    local gerter = thermal:load("gerter" .. (suffix or ""));
    return gerter:convert("MW");
end
return gerterMW;