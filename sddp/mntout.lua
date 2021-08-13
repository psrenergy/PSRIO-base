local function mntout()
    local hydro = Hydro();
    return hydro.min_total_outflow_modification;
end
return mntout;