local function useful_storage_initial(i, suffix)
    local hydro = Hydro(i or 1);
    local volini = hydro:load("volini" .. (suffix or ""));
    return volini - hydro.min_storage;
end
return useful_storage_initial;