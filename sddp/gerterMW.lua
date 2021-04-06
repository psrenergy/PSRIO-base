local function gerterMW()
    local thermal = require("collection/thermal");
    local gerter = thermal:load("gerter");
    return gerter:convert("MW");
end
return gerterMW;