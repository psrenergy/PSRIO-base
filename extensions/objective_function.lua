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

function ObjectiveFunction:cost(model)
    local model = "SDDP" or model;

    local generic = Generic();
    local output_name;
    if model == "OPTGEN" then
        output_name = "opt1_dashboard_totalcosts";
    else
        output_name = "objcop";
    end
    return generic:load(output_name);
end