local function useful_storage_initial(suffix)
    local hydro = require("collection/hydro");
    local volini = hydro:load("volini" .. (suffix or ""));
    return volini - hydro.vmin;
end
return useful_storage_initial;