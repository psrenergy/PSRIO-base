local function resgen(i)
    local generation_constraint = GenerationConstraint(i or 1);

    return generation_constraint.data;
end
return resgen;