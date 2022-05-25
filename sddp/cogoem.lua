local function cogoem(suffix)
    local renewable = Renewable();
    local gergnd = renewable:load("gergnd" .. (suffix or ""));
    return gergnd * renewable.om_cost;
end
return cogoem;