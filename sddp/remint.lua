local function remint(i, suffix)
    local interconnection = Interconnection(i or 1);

    local interconnection_flow = interconnection:load("interc" .. (suffix or "")):convert("MW");
    local interconnection_marginal_cost = interconnection:load("cmgint" .. (suffix or ""));

    return (interconnection_flow * interconnection_marginal_cost):abs();
end
return remint;