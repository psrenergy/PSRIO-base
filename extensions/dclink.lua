function DCLink.load_factor(self, model)
  local model = "SDDP" or model;

  local output_name = "usedcl";

  return self:load(output_name);
end

function DCLink.flow(self, model)
  local model = "SDDP" or model;

  local output_name = "dclink";

  return self:load(output_name);
end

function DCLink.losses(self, model)
  local model = "SDDP" or model;

  local output_name = "loslnk";

  return self:load(output_name);
end