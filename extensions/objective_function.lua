ObjectiveFunction = {};
ObjectiveFunction.__index = ObjectiveFunction

setmetatable(
  ObjectiveFunction, {
        __call = function(cls, ...)
            return cls.new(...)
        end
    }
);

function ObjectiveFunction.new(i)
  local self = setmetatable({}, ObjectiveFunction);
  self.case_index = (i or 1);
  return self;
end

function ObjectiveFunction:cost(model)
    local model = "SDDP" or model;
    local generic = Generic(self.case_index);

    if model == "SDDP" then
      return generic:load_sddp("objcop");
    elseif model == "OptGen" then
      return generic:load("opt1_dashboard_totalcosts");
    else
      error("Model not supported");
    end
end