local function qriego(i)
    local hydro<const> = Hydro(i or 1);

    return hydro.irrigation;
end
return qriego;
