local function volmax(i)
    local hydro = Hydro(i or 1);

    return hydro.max_storage;
end
return volmax;