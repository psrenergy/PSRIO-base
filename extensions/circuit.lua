function Circuit.losses(self, model)
  local model = "SDDP" or model;

  local output_name;
  if model == "OptGen2" then
    output_name = "opt2_losses";
  else
    output_name = "losses";
  end

  return self:load(output_name);

end

function Circuit.flow(self, model)
  local model = "SDDP" or model;

  local output_name;
  if model == "OptGen2" then
    output_name = "opt2_cirflow";
  else
    output_name = "cirflw";
  end

  return self:load(output_name);

end

function Circuit.load_factor(self, model)
  local model = "SDDP" or model;

  local output_name = "usecir";

  return self:load(output_name);
end
