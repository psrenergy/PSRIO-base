local function pnomtr(i)
    local thermal<const> = Thermal(i or 1);

    return thermal.max_generation;
end
return pnomtr;
