local function mnsout()
    local hydro = Hydro();
    return hydro.min_spillage;
end
return mnsout;