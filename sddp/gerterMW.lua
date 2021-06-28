local function gerterMW(suffix)
    local thermal = require("collection/thermal");
    local gerter = thermal:load("gerter" .. (suffix or ""));
    
    return gerter:convert("MW");
end
return gerterMW;