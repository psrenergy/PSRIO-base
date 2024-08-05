function ElectrificationFixedCommodity.used_input(self, model)
  local model = "SDDP" or model;

  local output_name = "fxcinp";

  return self:load(output_name);

end

function ElectrificationFixedCommodity.used_output(self, model)
  local model = "SDDP" or model;

  local output_name = "fxcout";

  return self:load(output_name);

end