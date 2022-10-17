local function volmax()
    local hydro = Hydro();
    return hydro.max_storage;
end
return volmax;