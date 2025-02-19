function PowerInjection.injection(self, model)
  local model = "SDDP" or model;

  if model == "SDDP" then
    return self:load_sddp("powinj");
  else
    error("Model not supported");
  end
end

function PowerInjection.cost(self, model)
  local model = "SDDP" or model;

  if model == "SDDP" then
    return self:load_sddp("cosinj");
  else
    error("Model not supported");
  end
end
