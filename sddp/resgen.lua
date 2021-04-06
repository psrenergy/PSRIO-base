local function resgen()
    local generation_constraint = require("collection/generation_constraint");
    return generation_constraint.capacity;
end
return resgen;