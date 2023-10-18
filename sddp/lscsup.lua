local function lscsup(i)
    local circuitssum<const> = CircuitsSum(i or 1);

    return circuitssum.ub;
end
return lscsup;
