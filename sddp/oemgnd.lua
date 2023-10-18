local function oemgnd(i)
    local renewable<const> = Renewable(i or 1);

    return renewable.om_cost;
end
return oemgnd;
