local function total_outflow(suffix)
    local hydro = Hydro();

    local spilled_outflow = hydro:load("qverti" .. (suffix or ""));
    local turbined_outflow = hydro:load("qturbi" .. (suffix or ""));

    return spilled_outflow + turbined_outflow;
end
return total_outflow;