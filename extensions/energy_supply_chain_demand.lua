function EnergySupplyChainDemand.cost(self, model)
  local model = "SDDP" or model;

  if model == "SDDP" then
    return self:load_sddp("edemrev");
  else
    error("Model not supported");
  end
end

function EnergySupplyChainDemand.demand_supplied(self, model)
  local model = "SDDP" or model;

  if model == "SDDP" then
    return self:load_sddp("edemmet");
  else
    error("Model not supported");
  end
end