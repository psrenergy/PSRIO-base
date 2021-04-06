local function fcwmax()
    local fuelcontract = require("collection/fuelcontract");
    return fuelcontract.max_offtake;
end
return fcwmax;