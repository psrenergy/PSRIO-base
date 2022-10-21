local function defind(i, suffix)
    local system = System(i or 1);
    local defcit = system:load("defcit" .. (suffix or ""));
    return ifelse(defcit:gt(0), 1, 0);
end
return defind;
