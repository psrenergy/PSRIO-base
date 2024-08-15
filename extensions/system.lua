function System.marginal_cost(self, model)
  local model = "SDDP" or model;

  local output_name = "cmgdem";

  return self:load(output_name);

end

function System.demand(self, model)
  local model = "SDDP" or model;

  local output_name = "demand";

  return self:load(output_name);

end

function System.deficit(self, model)
  local model = "SDDP" or model;

  local output_name = "defcit";

  return self:load(output_name);

end

function System.max_stored_energy(self, model)
  local model = "SDDP" or model;

  local output_name = "earmzm";

  return self:load(output_name);

end

function System.load_level_length_output(self, model)
  local model = "SDDP" or model;

  local output_name = "duraci";

  return self:load(output_name);

end

function System.load_level_length_output_pu(self, model)
  local model = "SDDP" or model;

  local output_name = "duracipu";

  return self:load(output_name);

end

function System.hour_block_mapping(self, model)
  local model = "SDDP" or model;

  local output_name = "hblock";

  return self:load(output_name);

end

function System.inflow_energy_65(self, model)
  local model = "SDDP" or model;

  local output_name = "enaf65";

  return self:load(output_name);

end

function System.inflow_energy(self, model)
  local model = "SDDP" or model;

  local output_name = "enaflu";

  return self:load(output_name);

end

function System.storage_energy(self, model)
  local model = "SDDP" or model;

  local output_name = "enearm";

  return self:load(output_name);

end

function System.load_supplied(self, model)
  local model = "SDDP" or model;

  local output_name = "demandel";

  return self:load(output_name);

end

function System.deficit_cost(self, model)
  local model = "SDDP" or model;

  local output_name = "defcos";

  return self:load(output_name);

end
