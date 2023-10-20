local function deficit_cost_segment(i, suffix)
    local system<const> = System(i or 1);
    local study<const> = Study(i or 1);

    local defict = system:load("defcit" .. (suffix or "")):convert("MW");
    local demand = system:load("demand" .. (suffix or "")):convert("MW");

    local segment_1 = study.deficit_segment_1;
    local segment_2 = study.deficit_segment_2;
    if not segment_2:loaded() then
        segment_2 = segment_1 * 0;
    end
    local segment_3 = study.deficit_segment_3;
    if not segment_3:loaded() then
        segment_3 = segment_1 * 0;
    end
    local segment_4 = study.deficit_segment_4;
    if not segment_4:loaded() then
        segment_4 = segment_1 * 0;
    end

    local cost_1 = study.deficit_cost_1;
    local cost_2 = study.deficit_cost_2;
    if not cost_2:loaded() then
        cost_2 = cost_1 * 0;
    end
    local cost_3 = study.deficit_cost_3;
    if not cost_3:loaded() then
        cost_3 = cost_1 * 0;
    end
    local cost_4 = study.deficit_cost_4;
    if not cost_4:loaded() then
        cost_4 = cost_1 * 0;
    end

    local defict_pu = (defict / demand):convert("pu");

    local segment_1_cost = ifelse(defict_pu:le(segment_1), cost_1, 0);
    local segment_2_cost = ifelse(defict_pu:gt(segment_1) and defict_pu:le(segment_2), cost_2, 0);
    local segment_3_cost = ifelse(defict_pu:gt(segment_2) and defict_pu:le(segment_3), cost_3, 0);
    local segment_4_cost = ifelse(defict_pu:gt(segment_3), cost_4, 0);

    return segment_1_cost + segment_2_cost + segment_3_cost + segment_4_cost

end
return deficit_cost_segment;
