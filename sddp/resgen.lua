local function resgen()
    local generation_constraint = GenerationConstraint();
    return generation_constraint.capacity;
end
return resgen;