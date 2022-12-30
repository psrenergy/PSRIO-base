local function hydro_spillage_probability(i, suffix)
    local hydro = Hydro(i or 1);
    local system = System(i or 1);

    local spillage = hydro:load("qverti" .. (suffix or ""));

    local load_level_length = system.load_level_length;
    local has_spillage = ifelse(spillage:gt(0), 1, 0);

    local blocks_with_spillage = (has_spillage * load_level_length):aggregate_blocks(BY_SUM());
    local total_blocks = load_level_length:aggregate_blocks(BY_SUM());

    return (blocks_with_spillage / total_blocks):convert("%");
end
return hydro_spillage_probability;