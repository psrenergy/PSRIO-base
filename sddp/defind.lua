local function defind(suffix)
    local system = System();
    local defcit = system:load("defcit" .. (suffix or ""));
    return ifelse(defcit:gt(0), 1, 0);
end
return defind;