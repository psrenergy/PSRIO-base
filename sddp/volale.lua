local function volale(i)
    local hydro = Hydro(i or 1);

    return hydro.alert_storage;
end
return volale;
