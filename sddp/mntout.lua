local function mntout(i)
    local hydro = Hydro(i or 1);

    return hydro.min_total_outflow_modification;
end
return mntout;
