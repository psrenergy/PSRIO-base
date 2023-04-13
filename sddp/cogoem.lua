local function cogoem(i, suffix)
    local renewable = Renewable(i or 1);

    local renewable_generation = renewable:load("gergnd" .. (suffix or ""));

    return renewable_generation * renewable.om_cost;
end
return cogoem;
