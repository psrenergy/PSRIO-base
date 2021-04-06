local function usernw()
    local renewable = require("collection/renewable");
    local gergnd = renewable:load("gergnd");
    return (gergnd:convert("MW") / renewable.capacity):convert("%");
end
return usernw;