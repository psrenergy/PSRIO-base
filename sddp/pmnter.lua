local function pmnter(i)
    local thermal<const> = Thermal(i);

    return thermal.min_generation;
end
return pmnter;
