local function lscsup(i)
    local circuitssum = CircuitsSum(i or 1);

    return circuitssum.ub;
end
return lscsup;