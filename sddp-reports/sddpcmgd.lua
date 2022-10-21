local function sddpcmgd(i, suffix)
    local system = System(i or 1);
    local cmgdem = system:load("cmgdem" .. (suffix or ""));
    return cmgdem:aggregate_blocks(BY_AVERAGE()):aggregate_scenarios(BY_AVERAGE());
end
return sddpcmgd;