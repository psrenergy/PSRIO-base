local function fcwmax()
    local fuelcontract = FuelContract();
    return fuelcontract.max_offtake;
end
return fcwmax;