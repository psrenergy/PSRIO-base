local function fcwmax(i)
    local fuelcontract = FuelContract(i or 1);

    return fuelcontract.max_offtake;
end
return fcwmax;
