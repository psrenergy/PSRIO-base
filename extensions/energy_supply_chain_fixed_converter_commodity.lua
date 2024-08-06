function EnergySupplyChainFixedConverterCommodity.input_flow(self, model)
  local model = "SDDP" or model;

  local output_name = "fxcinp";

  return self:load(output_name);

end

function EnergySupplyChainFixedConverterCommodity.output_flow(self, model)
  local model = "SDDP" or model;

  local output_name = "fxcout";

  return self:load(output_name);

end