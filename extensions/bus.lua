function Bus.marginal_cost(self, model)
  local model = "SDDP" or model;

  if model == "SDDP" then
    return self:load_sddp("cmgbus");
  else
    error("Model not supported");
  end
end

function Bus.deficit(self, model)
  local model = "SDDP" or model;

  if model == "SDDP" then
    return self:load_sddp("defbus");
  else
    error("Model not supported");
  end
end

function Bus.demand(self, model)
  local model = "SDDP" or model;

  if model == "SDDP" then
    return self:load_sddp("demxba");
  else
    error("Model not supported");
  end
end

function Bus.load_supplied(self, model)
  local model = "SDDP" or model;

  if model == "SDDP" then
    return self:load_sddp("demxbael");
  else
    error("Model not supported");
  end
end