function Bus.marginal_cost(self, model)
  local model = "SDDP" or model;

  local output_name = "cmgbus";

  return self:load(output_name);
end

function Bus.deficit(self, model)
  local model = "SDDP" or model;

  local output_name = "defbus";

  return self:load(output_name);

end

function Bus.demand(self, model)
  local model = "SDDP" or model;

  local output_name = "demxba";

  return self:load(output_name);

end

function System.load_supplied(self, model)
  local model = "SDDP" or model;

  local output_name = "demxbael";

  return self:load(output_name);

end