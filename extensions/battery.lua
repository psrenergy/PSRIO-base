function Battery.generation(self, model)
  local model = "SDDP" or model;

  if model == "SDDP" then
    return self:load_sddp("gerbat");
  else
    error("Model not supported");
  end

end

function Battery.final_storage(self, model)
  local model = "SDDP" or model;

  if model == "SDDP" then
    return self:load_sddp("batstg");
  else
    error("Model not supported");
  end

end