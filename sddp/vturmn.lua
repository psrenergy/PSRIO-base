local function vturmn(suffix)
    local hydro = require("collection/hydro");
    local qturbi = hydro:load("qturbi" .. (suffix or ""));
    return max(hydro.qmin - qturbi, 0);
end
return vturmn;