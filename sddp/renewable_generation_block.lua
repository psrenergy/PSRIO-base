local function renewable_generation_block(i)
    local renewable = Renewable(i or 1);

    return renewable.block_scenarios * renewable.capacity * renewable.operation_factor;
end
return renewable_generation_block;