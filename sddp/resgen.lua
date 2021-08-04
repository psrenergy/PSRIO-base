local function resgen()
    local generation_constraint = require("collection/generationconstraint");
    return generation_constraint.capacity;
end
return resgen;