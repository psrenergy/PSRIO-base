local function fcvmaxtp(i)
    local fuelcontract<const> = FuelContract(i or 1);

    return fuelcontract.take_or_pay;
end
return fcvmaxtp;
