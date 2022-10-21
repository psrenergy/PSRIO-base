local function qtoutf(i, suffix)
    local hydro = Hydro(i or 1);
    local qverti = hydro:load("qverti" .. (suffix or ""));
    local qturbi = hydro:load("qturbi" .. (suffix or ""));
    return qverti + qturbi;
end
return qtoutf;