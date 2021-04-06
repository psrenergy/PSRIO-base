local function fcvmaxtp()
    local fuelcontract = require("collection/fuelcontract");
    return fuelcontract.take_or_pay;
end
return fcvmaxtp;