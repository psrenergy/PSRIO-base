function EnergyChainFixedConverterCommodity.input_flow(self, model)
  local model = "SDDP" or model;

  if model == "SDDP" then
    return self:load_sddp("fxcinp");
  else
    error("Model not supported");
  end
end

function EnergyChainFixedConverterCommodity.output_flow(self, model)
  local model = "SDDP" or model;

  if model == "SDDP" then
    return self:load_sddp("fxcout");
  else
    error("Model not supported");
  end
end