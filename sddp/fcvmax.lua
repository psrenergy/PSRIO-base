local function fcvmax(i)
    local fuelcontract = FuelContract(i or 1);

    return fuelcontract.amount;
end
return fcvmax;