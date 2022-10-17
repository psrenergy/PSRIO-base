local function useful_storage_initial(suffix)
    local hydro = Hydro();
    local volini = hydro:load("volini" .. (suffix or ""));
    return volini - hydro.min_storage;
end
return useful_storage_initial;