local function useful_storage_initial(i, suffix)
    local hydro<const> = Hydro(i or 1);

    local initial_storage = hydro:load("volini" .. (suffix or ""));

    return initial_storage - hydro.min_storage;
end
return useful_storage_initial;
