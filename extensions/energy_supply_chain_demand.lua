function EnergySupplyChainDemand.cost(self, model)
  local model = "SDDP" or model;

  local output_name = "edemrev";

  return self:load(output_name);

end

function EnergySupplyChainDemand.demand_supplied(self, model)
  local model = "SDDP" or model;

  local output_name = "edemmet";

  return self:load(output_name);

end

function EnergySupplyChainDemand.final_storage(self, model)
  local model = "SDDP" or model;

  local output_name = "estbal";

  return self:load(output_name);

end