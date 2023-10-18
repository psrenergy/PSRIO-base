local function volmno(i)
    local hydro<const> = Hydro(i or 1);

    return hydro.min_storage;
end
return volmno;
