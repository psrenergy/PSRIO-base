local function hydro_spillage_probability(i, suffix)
    local hydro = Hydro(i or 1);

    local spillage = hydro:load("qverti" .. (suffix or ""));
    local has_spillage = ifelse(spillage:gt(0), 1, 0);

    return has_spillage:aggregate_blocks(BY_AVERAGE()):convert("%");
end
return hydro_spillage_probability;
