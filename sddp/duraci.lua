local function duraci(i)
    local system<const> = System(i or 1);

    return system.load_level_length;
end
return duraci;
