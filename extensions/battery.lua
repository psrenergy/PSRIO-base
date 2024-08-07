function Battery.generation(self, model)
  local model = "SDDP" or model;

  local output_name = "gerbat";

  return self:load(output_name);

end