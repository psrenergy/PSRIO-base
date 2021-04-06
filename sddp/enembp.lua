local function enembp()
    local hydro = require("collection/hydro");
    local eneemb = hydro:load("eneemb");
    local eembmx = hydro:load("eembmx");
    return (eneemb / eembmx):convert("%");
end
return enembp;