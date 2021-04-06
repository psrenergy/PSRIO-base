local function remint()
    local interconnection = require("collection/interconnection");
    local interc = interconnection:load("interc"):convert("MW");
    local cmgint = interconnection:load("cmgint");
    return (interc * cmgint):abs();
end
return remint;