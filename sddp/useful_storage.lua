local function useful_storage(i)
    local hydro<const> = Hydro(i or 1);

    return hydro.max_storage - hydro.min_storage;
end
return useful_storage;
