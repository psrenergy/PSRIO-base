function Renewable.generation(self, model)
  local model = "SDDP" or model;

  local output_name = "gergnd";

  return self:load(output_name);

end