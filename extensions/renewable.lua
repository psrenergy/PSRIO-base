function Renewable.generation(self, model)
  local model = "SDDP" or model;

  if model == "SDDP" then
    return self:load_sddp("gergnd");
  else
    error("Model not supported");
  end
end

function Renewable.curtailment(self, model)
  local model = "SDDP" or model;

  if model == "SDDP" then
    return self:load_sddp("vergnd");
  else
    error("Model not supported");
  end
end

function Renewable.nominal_capacity(self, model)
  local model = "SDDP" or model;

  if model == "SDDP" then
    return self:load_sddp("pnomnd");
  else
    error("Model not supported");
  end
end
