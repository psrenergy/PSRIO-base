local function volmax(i)
    local hydro<const> = Hydro(i or 1);

    return hydro.max_storage;
end
return volmax;
