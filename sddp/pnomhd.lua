local function pnomhd(i)
    local hydro = Hydro(i or 1);

    return hydro.max_generation;
end
return pnomhd;