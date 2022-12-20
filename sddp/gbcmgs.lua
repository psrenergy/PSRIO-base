local function gbcmgs(i, suffix)
    local battery = Battery(i or 1);
    local system = System(i or 1);

    local battery_generation = battery:load("gerbat" .. (suffix or ""));
    local load_marginal_cost = system:load("cmgdem" .. (suffix or ""));

    return (battery_generation * load_marginal_cost):convert("k$");
end
return gbcmgs;