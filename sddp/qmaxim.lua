local function qmaxim(i)
    local hydro<const> = Hydro(i or 1);

    return hydro.max_turbining_outflow;
end
return qmaxim;
