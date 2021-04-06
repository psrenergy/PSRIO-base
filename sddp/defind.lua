local function defind()
    local system = require("collection/system");
    local defcit = system:load("defcit");
    return ifelse(defcit:gt(0), 1, 0);
end
return defind;