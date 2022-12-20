local function pmnter(i)
    local thermal = Thermal(i or 1);

    return thermal.min_generation;
end
return pmnter;