local function ghcmgs(suffix)
    local hydro = Hydro();
    local system = System();

    local hydro_generation = hydro:load("gerhid" .. (suffix or ""));
    local load_marginal_cost = system:load("cmgdem" .. (suffix or ""));

    return hydro_generation * load_marginal_cost;
end
return ghcmgs;