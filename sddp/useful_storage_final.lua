local function useful_storage_final(i, suffix)
    local hydro<const> = Hydro(i or 1);

    local final_storage = hydro:load("volfin" .. (suffix or ""));

    return final_storage - hydro.min_storage;
end
return useful_storage_final;
