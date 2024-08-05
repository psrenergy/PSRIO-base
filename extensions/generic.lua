function Generic.objective_function_cost(self, model)
    local model = "SDDP" or model;

    local output_name;
    if model == "OPTGEN" then
        output_name = "opt1_dashboard_totalcosts";
    else
        output_name = "objcop";
    end
    return self:load(output_name);

end
