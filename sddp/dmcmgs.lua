local function dmcmgs(i, suffix)
    local system<const> = System(i or 1);

    local demand = system:load("demand" .. (suffix or ""));
    local deficit = system:load("defcit" .. (suffix or ""));
    local load_marginal_cost = system:load("cmgdem" .. (suffix or ""));

    return (demand - deficit) * load_marginal_cost;
end
return dmcmgs;
