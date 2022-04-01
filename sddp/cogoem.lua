local function cogoem(suffix)
    local renewable = Renewable();
    local gergnd = renewable:load("gergnd" .. (suffix or ""));
    return gergnd * renewable.omcost;
end
return cogoem;