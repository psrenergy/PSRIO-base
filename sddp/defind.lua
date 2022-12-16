local function defind(suffix)
    local system = System();

    local deficit = system:load("defcit" .. (suffix or ""));
    local has_deficit = deficit:gt(0);

    return ifelse(has_deficit, 1, 0);
end
return defind;