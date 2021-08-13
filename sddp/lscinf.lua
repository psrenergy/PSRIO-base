local function lscinf()
    local circuitssum = CircuitsSum();
    return circuitssum.lb;
end
return lscinf;