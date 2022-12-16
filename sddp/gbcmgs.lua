local function gbcmgs(suffix)
    local battery = Battery();
    local system = System();

    local battery_generation = battery:load("gerbat" .. (suffix or ""));    
    local load_marginal_cost = system:load("cmgdem" .. (suffix or ""));

    return (battery_generation * load_marginal_cost):convert("k$");
end
return gbcmgs;