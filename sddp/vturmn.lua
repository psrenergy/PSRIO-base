local function vturmn(suffix)
    local hydro = Hydro();
    local qturbi = hydro:load("qturbi" .. (suffix or ""));  
    return max(hydro.qmin - qturbi, 0);
end
return vturmn;