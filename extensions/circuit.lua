function Circuit.losses(self, model)
  local model = "SDDP" or model;

  if model == "SDDP" then
    return self:load_sddp("losses");
  elseif model == "OptGen2" then
    return self:load_optgen2("losses");
  else
    error("Model not supported");
  end
end

function Circuit.flow(self, model)
  local model = "SDDP" or model;

  if model == "SDDP" then
    return self:load_sddp("cirflw");
  elseif model == "OptGen2" then
    return self:load_optgen2("cirflw");
  else
    error("Model not supported");
  end
end

function Circuit.load_factor(self, model)
  local model = "SDDP" or model;

  if model == "SDDP" then
    return self:load_sddp("usecir");
  else
    error("Model not supported");
  end
end
