function Hydro.generation(self, model)
  local model = "SDDP" or model;

  if model == "SDDP" then
    return self:load_sddp("gerhid");
  else
    error("Model not supported");
  end
end

function Hydro.inflow(self, model)
  local model = "SDDP" or model;

  if model == "SDDP" then
    return self:load_sddp("inflow");
  else
    error("Model not supported");
  end
end

function Hydro.final_storage(self, model)
  local model = "SDDP" or model;

  if model == "SDDP" then
    return self:load_sddp("volfin");
  else
    error("Model not supported");
  end
end

function Hydro.spillage(self, model)
  local model = "SDDP" or model;

  if model == "SDDP" then
    return self:load_sddp("qverti");
  else
    error("Model not supported");
  end
end

function Hydro.turbining(self, model)
  local model = "SDDP" or model;

  if model == "SDDP" then
    return self:load_sddp("qturbi");
  else
    error("Model not supported");
  end
end

function Hydro.stored_energy(self, model)
  local model = "SDDP" or model;

  if model == "SDDP" then
    return self:load_sddp("eneemb");
  else
    error("Model not supported");
  end
end

function Hydro.final_head(self, model)
  local model = "SDDP" or model;

  if model == "SDDP" then
    return self:load_sddp("cotfin");
  else
    error("Model not supported");
  end
end

function Hydro.flood_control_storage(self, model)
  local model = "SDDP" or model;

  if model == "SDDP" then
    return self:load_sddp("volesp");
  else
    error("Model not supported");
  end
end

-- -- funcao momentaneamente retirada para evitar conflito com o dos atributos
-- function Hydro.max_operative_storage(self, model)
--   local model = "SDDP" or model;

--   if model == "SDDP" then
--     return self:load_sddp("mxops");
--   else
--     error("Model not supported");
--   end
-- end

-- -- funcao momentaneamente retirada para evitar conflito com o dos atributos
-- function Hydro.alert_storage(self, model)
--   local model = "SDDP" or model;

--   if model == "SDDP" then
--     return self:load_sddp("volale");
--   else
--     error("Model not supported");
--   end
-- end

function Hydro.nominal_capacity(self, model)
  local model = "SDDP" or model;

  if model == "SDDP" then
    return self:load_sddp("pnomhd");
  else
    error("Model not supported");
  end
end

function Hydro.production_factor(self, model)
  local model = "SDDP" or model;

  if model == "SDDP" then
    return self:load_sddp("fprodt");
  else
    error("Model not supported");
  end
end

function Hydro.accumulated_production_factor(self, model)
  local model = "SDDP" or model;

  if model == "SDDP" then
    return self:load_sddp("fprodtac");
  else
    error("Model not supported");
  end
end

function Hydro.spilled_energy(self, model)
  local model = "SDDP" or model;

  if model == "SDDP" then
    return self:load_sddp("envehd");
  else
    error("Model not supported");
  end
end

function Hydro.opportunity_cost(self, model)
  local model = "SDDP" or model;

  if model == "SDDP" then
    return self:load_sddp("oppchg");
  else
    error("Model not supported");
  end
end