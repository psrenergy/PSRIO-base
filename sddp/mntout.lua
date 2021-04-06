local function mntout()
    local hydro = require("collection/hydro");
    return hydro.min_total_outflow_modification;
end
return mntout;