function Hydro.generation(self, model)
  local model = "SDDP" or model;

  local output_name = "gerhid";

  return self:load(output_name);

end

function Hydro.inflow(self, model)
  local model = "SDDP" or model;

  local output_name = "inflow";

  return self:load(output_name);

end

function Hydro.final_volume(self, model)
  local model = "SDDP" or model;

  local output_name = "volfin";

  return self:load(output_name);

end

function Hydro.spillage(self, model)
  local model = "SDDP" or model;

  local output_name = "qverti";

  return self:load(output_name);

end

function Hydro.turbinig(self, model)
  local model = "SDDP" or model;

  local output_name = "qturbi";

  return self:load(output_name);

end

function Hydro.storage_energy(self, model)
  local model = "SDDP" or model;

  local output_name = "eneemb";

  return self:load(output_name);

end

function Hydro.final_head(self, model)
  local model = "SDDP" or model;

  local output_name = "cotfin";

  return self:load(output_name);

end

-- nome momentaneamente alterado para evitar conflito com o dos atributos
function Hydro.flow_control_storages(self, model)
  local model = "SDDP" or model;

  local output_name = "volesp";

  return self:load(output_name);

end

-- nome momentaneamente alterado para evitar conflito com o dos atributos
function Hydro.max_operative_storages(self, model)
  local model = "SDDP" or model;

  local output_name = "mxops";

  return self:load(output_name);

end

-- nome momentaneamente alterado para evitar conflito com o dos atributos
function Hydro.alert_storages(self, model)
  local model = "SDDP" or model;

  local output_name = "volale";

  return self:load(output_name);

end

function Hydro.nominal_capacity(self, model)
  local model = "SDDP" or model;

  local output_name = "pnomhd";

  return self:load(output_name);

end

function Hydro.production_factor(self, model)
  local model = "SDDP" or model;

  local output_name = "fprodt";

  return self:load(output_name);

end

function Hydro.accumulated_production_factor(self, model)
  local model = "SDDP" or model;

  local output_name = "fprodtac";

  return self:load(output_name);

end

function Hydro.spillage_energy(self, model)
  local model = "SDDP" or model;

  local output_name = "envehd";

  return self:load(output_name);

end

function Hydro.opportunity_cost(self, model)
  local model = "SDDP" or model;

  local output_name = "oppchg";

  return self:load(output_name);

end
