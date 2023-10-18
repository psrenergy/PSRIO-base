local function pmnter(i)
    local thermal<const> = Thermal(i or 1);

    return thermal.min_generation;
end
return pmnter;
