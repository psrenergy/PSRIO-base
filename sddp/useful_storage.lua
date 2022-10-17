local function useful_storage()
    local hydro = Hydro();
    return hydro.max_storage - hydro.min_storage;
end
return useful_storage;