function Battery.generation(self, model)
  local model = "SDDP" or model;

  local output_name = "gerbat";

  return self:load(output_name);

end

function Battery.final_storage(self, model)
  local model = "SDDP" or model;

  local output_name = "batstg";

  return self:load(output_name);
end