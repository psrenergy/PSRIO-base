local function enembp(suffix)
    local hydro = require("collection/hydro");
    local eneemb = hydro:load("eneemb" .. (suffix or ""));
    local eembmx = hydro:load("eembmx" .. (suffix or ""));

    return (eneemb / eembmx):convert("%");
end
return enembp;