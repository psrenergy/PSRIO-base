local function resgen(i)
    local generation_constraint = GenerationConstraint(i or 1);
    return generation_constraint.capacity;
end
return resgen;