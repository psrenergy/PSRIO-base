local function pnomtr(i)
    local thermal<const> = Thermal(i);

    return thermal.max_generation;
end
return pnomtr;
