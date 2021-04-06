local function useful_storage()
    local hydro = require("collection/hydro");
    return hydro.vmax - hydro.vmin;
end
return useful_storage;