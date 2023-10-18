local function qminim(i)
    local hydro<const> = Hydro(i or 1);

    return hydro.min_turbining_outflow;
end
return qminim;
