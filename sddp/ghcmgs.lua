local function ghcmgs(i, suffix)
    local hydro<const> = Hydro(i or 1);
    local system<const> = System(i or 1);

    local hydro_generation = hydro:load("gerhid" .. (suffix or ""));
    local load_marginal_cost = system:load("cmgdem" .. (suffix or ""));

    return hydro_generation * load_marginal_cost;
end
return ghcmgs;
