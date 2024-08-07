function ExpansionProject.investment_decision(self, model)
  local model = "OptGen" or model;

  local output_name = "outidec"

  return self:load(output_name);

end
