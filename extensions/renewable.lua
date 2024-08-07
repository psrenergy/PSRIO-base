function Renewable.generation(self, model)
  local model = "SDDP" or model;

  local output_name = "gergnd";

  return self:load(output_name);

end

function Renewable.spillage(self, model)
  local model = "SDDP" or model;

  local output_name = "vergnd";

  return self:load(output_name);

end

function Renewable.nominal_capacity(self, model)
  local model = "SDDP" or model;

  local output_name = "pnomnd";

  return self:load(output_name);

end
