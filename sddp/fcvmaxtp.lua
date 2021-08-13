local function fcvmaxtp()
    local fuelcontract = FuelContract();
    return fuelcontract.take_or_pay;
end
return fcvmaxtp;