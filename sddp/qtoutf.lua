local function qtoutf(suffix)
    local hydro = require("collection/hydro");
    local qverti = hydro:load("qverti" .. (suffix or ""));
    local qturbi = hydro:load("qturbi" .. (suffix or ""));
    return qverti + qturbi;
end
return qtoutf;