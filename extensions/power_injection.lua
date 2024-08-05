function PowerInjection.flow(self, model)
  local model = "SDDP" or model;

  local output_name = "powinj";

  return self:load(output_name);

end

function PowerInjection.cost(self, model)
  local model = "SDDP" or model;

  local output_name = "cosinj";

  return self:load(output_name);

end
