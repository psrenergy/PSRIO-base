local function useful_storage_final(suffix)
    local hydro = require("collection/hydro");
    local volfin = hydro:load("volfin" .. (suffix or ""));
    return volfin - hydro.vmin;
end
return useful_storage_final;