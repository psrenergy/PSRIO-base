local function usernw(suffix)
    local renewable = require("collection/renewable");
    local gergnd = renewable:load("gergnd" .. (suffix or "")):convert("MW");

    return (gergnd / renewable.capacity):convert("%");
end
return usernw;