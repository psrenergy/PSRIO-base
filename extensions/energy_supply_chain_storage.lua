function EnergySupplyChainStorage.final_storage(self, model)
  local model = "SDDP" or model;

  local output_name = "estbal";

  return self:load(output_name);

end