function System.marginal_cost(self, model)
  local model = "SDDP" or model;

  if model == "SDDP" then
    return self:load_sddp("cmgdem");
  else
    error("Model not supported");
  end
end

function System.demand(self, model)
  local model = "SDDP" or model;

  if model == "SDDP" then
    return self:load_sddp("demand");
  else
    error("Model not supported");
  end
end

function System.deficit(self, model)
  local model = "SDDP" or model;

  if model == "SDDP" then
    return self:load_sddp("defcit");
  else
    error("Model not supported");
  end
end

function System.max_stored_energy(self, model)
  local model = "SDDP" or model;

  if model == "SDDP" then
    return self:load_sddp("earmzm");
  else
    error("Model not supported");
  end
end

function System.block_duration(self, model)
  local model = "SDDP" or model;

  if model == "SDDP" then
    return self:load_sddp("duraci");
  else
    error("Model not supported");
  end
end

function System.block_duration_pu(self, model)
  local model = "SDDP" or model;

  if model == "SDDP" then
    return self:load_sddp("duracipu");
  else
    error("Model not supported");
  end
end


function System.hour_block_mapping(self, model)
  local model = "SDDP" or model;

  if model == "SDDP" then
    return self:load_sddp("hblock");
  else
    error("Model not supported");
  end
end

function System.inflow_energy_65(self, model)
  local model = "SDDP" or model;

  if model == "SDDP" then
    return self:load_sddp("enaf65");
  else
    error("Model not supported");
  end
end

function System.inflow_energy(self, model)
  local model = "SDDP" or model;

  if model == "SDDP" then
    return self:load_sddp("enaflu");
  else
    error("Model not supported");
  end
end

function System.stored_energy(self, model)
  local model = "SDDP" or model;

  if model == "SDDP" then
    return self:load_sddp("enearm");
  else
    error("Model not supported");
  end
end

function System.load_supplied(self, model)
  local model = "SDDP" or model;

  if model == "SDDP" then
    return self:load_sddp("demandel");
  else
    error("Model not supported");
  end
end

function System.deficit_cost(self, model)
  local model = "SDDP" or model;

  if model == "SDDP" then
    return self:load_sddp("defcos");
  else
    error("Model not supported");
  end
end