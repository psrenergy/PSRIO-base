local function gerterMW(i, suffix)
    local thermal = Thermal(i or 1);
    local gerter = thermal:load("gerter" .. (suffix or ""));
    return gerter:convert("MW");
end
return gerterMW;