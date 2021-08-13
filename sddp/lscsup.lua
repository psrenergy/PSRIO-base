local function lscsup()
    local circuitssum = CircuitsSum();
    return circuitssum.ub;
end
return lscsup;