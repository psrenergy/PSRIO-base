local function mnsout()
    local hydro = require("collection/hydro");
    return hydro.min_spillage;
end
return mnsout;