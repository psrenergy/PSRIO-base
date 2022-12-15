local function resgen()
    local generation_constraint = GenerationConstraint();
    return generation_constraint.data;
end
return resgen;