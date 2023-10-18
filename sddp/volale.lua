local function volale(i)
    local hydro<const> = Hydro(i or 1);

    return hydro.alert_storage;
end
return volale;
