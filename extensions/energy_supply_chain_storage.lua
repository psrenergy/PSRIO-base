function EnergySupplyChainStorage.final_storage(self, model)
  local model = "SDDP" or model;

  if model == "SDDP" then
    return self:load_sddp("estbal");
  else
    error("Model not supported");
  end
end