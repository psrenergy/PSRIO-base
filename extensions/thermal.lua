function Thermal.generation(self, model)
  local model = "SDDP" or model;

  if model == "SDDP" then
    return self:load_sddp("gerter");
  else
    error("Model not supported");
  end
end


function Thermal.load_factor(self, model)
  local model = "SDDP" or model;

  if model == "SDDP" then
    return self:load_sddp("useter");
  else
    error("Model not supported");
  end
end

function Thermal.fuel_consumption(self, model)
  local model = "SDDP" or model;

  if model == "SDDP" then
    return self:load_sddp("fueltr");
  else
    error("Model not supported");
  end
end

function Thermal.nominal_capacity(self, model)
  local model = "SDDP" or model;

  if model == "SDDP" then
    return self:load_sddp("pnomtr");
  else
    error("Model not supported");
  end
end

function Thermal.operating_cost(self, model)
  local model = "SDDP" or model;

  if model == "SDDP" then
    return self:load_sddp("coster");
  else
    error("Model not supported");
  end
end