local function fcwmax(i)
    local fuelcontract<const> = FuelContract(i or 1);

    return fuelcontract.withdrawal_rate;
end
return fcwmax;
