function Thermal.generation(self, model)
  local model = "SDDP" or model;

  local output_name = "gerter";

  return self:load(output_name);

end

function Thermal.load_factor(self, model)
  local model = "SDDP" or model;

  local output_name = "useter";

  return self:load(output_name);

end

function Thermal.fuel_consumption(self, model)
  local model = "SDDP" or model;

  local output_name = "fueltr";

  return self:load(output_name);

end

function Thermal.nominal_capacity(self, model)
  local model = "SDDP" or model;

  local output_name = "pnomtr";

  return self:load(output_name);

end

function Thermal.operating_cost(self, model)
  local model = "SDDP" or model;

  local output_name = "coster";

  return self:load(output_name);

end