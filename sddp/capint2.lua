local function capint2()
    local interconnection = require("collection/interconnection");
    return interconnection.capacity_left;
end
return capint2;