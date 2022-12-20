local function mnsout(i)
    local hydro = Hydro(i or 1);

    return hydro.min_spillage;
end
return mnsout;