local function cogoem(suffix)
    local renewable = Renewable();

    local renewable_generation = renewable:load("gergnd" .. (suffix or ""));

    return renewable_generation * renewable.om_cost;
end
return cogoem;