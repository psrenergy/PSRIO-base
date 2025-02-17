function ExpansionProject.investment_decision(self, model)
  local model = "OptGen" or model;

  if model == "OptGen" then
    return self:load("outidec");
  else
    error("Model not supported");
  end
end
