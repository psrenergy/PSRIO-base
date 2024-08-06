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
    local model = (model or "SDDP");

    local generic = Generic(self.case_index);
    local output_name;
    if model == "OPTGEN" then
        output_name = "opt1_dashboard_totalcosts";
    else
        output_name = "objcop";
    end
    return generic:load(output_name);
end