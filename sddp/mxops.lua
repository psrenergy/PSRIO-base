local function mxops(i)
    local hydro = Hydro(i or 1);

    return hydro.max_operative_storage;
end
return mxops;
