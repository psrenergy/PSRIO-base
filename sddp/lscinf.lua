local function lscinf(i)
    local circuitssum = CircuitsSum(i or 1);
    return circuitssum.lb;
end
return lscinf;