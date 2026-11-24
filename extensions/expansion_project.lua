function ExpansionProject.investment_decision(self, model)
  local model = model or "SDDP";

  if model == "SDDP" then
    return self:load_sddp("optgxp");
  elseif model == "OptGen" then
    return self:load("outidec");
  else
    error("Model not supported");
  end
end
