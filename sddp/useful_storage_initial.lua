local function useful_storage_initial(suffix)
    local hydro = Hydro();

    local initial_storage = hydro:load("volini" .. (suffix or ""));

    return initial_storage - hydro.min_storage;
end
return useful_storage_initial;