local function useful_storage_final(suffix)
    local hydro = Hydro();

    local final_storage = hydro:load("volfin" .. (suffix or ""));

    return final_storage - hydro.min_storage;
end
return useful_storage_final;