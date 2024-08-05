function ElectrificationDemand.cost(self, model)
  local model = "SDDP" or model;

  local output_name = "edemrev";

  return self:load(output_name);

end

function ElectrificationDemand.supplied(self, model)
  local model = "SDDP" or model;

  local output_name = "edemmet";

  return self:load(output_name);

end

function ElectrificationDemand.final_storage(self, model)
  local model = "SDDP" or model;

  local output_name = "estbal";

  return self:load(output_name);

end