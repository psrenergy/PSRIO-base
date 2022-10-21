local function qminim(i)
    local hydro = Hydro(i or 1);
    return hydro.min_turbining_outflow;
end
return qminim;
