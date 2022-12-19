local function remint(suffix)
    local interconnection = Interconnection();

    local interconnection_flow = interconnection:load("interc" .. (suffix or "")):convert("MW");
    local interconnection_marginal_cost = interconnection:load("cmgint" .. (suffix or ""));

    return (interconnection_flow * interconnection_marginal_cost):abs();
end
return remint;