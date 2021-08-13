local function useful_storage()
    local hydro = Hydro();
    return hydro.vmax - hydro.vmin;
end
return useful_storage;