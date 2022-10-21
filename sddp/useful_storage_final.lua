local function useful_storage_final(i, suffix)
    local hydro = Hydro(i or 1);
    local volfin = hydro:load("volfin" .. (suffix or ""));
    return volfin - hydro.min_storage;
end
return useful_storage_final;