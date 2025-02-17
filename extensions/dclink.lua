function DCLink.load_factor(self, model)
  local model = "SDDP" or model;

  if model == "SDDP" then
    return self:load_sddp("usedcl");
  else
    error("Model not supported");
  end
end

function DCLink.flow(self, model)
  local model = "SDDP" or model;

  if model == "SDDP" then
    return self:load_sddp("dclink");
  else
    error("Model not supported");
  end
end

function DCLink.losses(self, model)
  local model = "SDDP" or model;

  if model == "SDDP" then
    return self:load_sddp("loslnk");
  else
    error("Model not supported");
  end
end