local function fcwmax(i)
    local fuelcontract = FuelContract(i or 1);

    return fuelcontract.withdrawal_rate;
end
return fcwmax;
