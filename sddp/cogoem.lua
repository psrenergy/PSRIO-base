local function cogoem(i, suffix)
    local renewable = Renewable(i or 1);
    local gergnd = renewable:load("gergnd" .. (suffix or ""));
    return gergnd * renewable.om_cost;
end
return cogoem;
