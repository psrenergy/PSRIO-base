local function defind(i, suffix)
    local system<const> = System(i or 1);

    local deficit = system:load("defcit" .. (suffix or ""));
    local has_deficit = deficit:gt(0);

    return ifelse(has_deficit, 1, 0);
end
return defind;
