ObjectiveFunction = {};
ObjectiveFunction.__index = ObjectiveFunction

setmetatable(
  ObjectiveFunction, {
        __call = function(cls, ...)
            return cls.new(...)
        end
    }
);

function ObjectiveFunction.new()
  local self = setmetatable({}, ObjectiveFunction);
  return self;
end

function ObjectiveFunction:cost(self, model)
    local model = "SDDP" or model;

    local output_name;
    if model == "OPTGEN" then
        output_name = "opt1_dashboard_totalcosts";
    else
        output_name = "objcop";
    end
    return self:load(output_name);
end