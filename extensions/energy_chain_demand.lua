function EnergyChainDemand.cost(self, model)
  local model = "SDDP" or model;

  if model == "SDDP" then
    return self:load_sddp("edemrev");
  else
    error("Model not supported");
  end
end

function EnergyChainDemand.demand_supplied(self, model)
  local model = "SDDP" or model;

  if model == "SDDP" then
    return self:load_sddp("edemmet");
  else
    error("Model not supported");
  end
end