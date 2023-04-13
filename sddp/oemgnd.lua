local function oemgnd(i)
    local renewable = Renewable(i or 1);

    return renewable.om_cost;
end
return oemgnd;
