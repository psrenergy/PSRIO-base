function string.random(length)
    local charset = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";

    local vector = {};
    for _ = 1, length do
        local i = math.random(1, #charset);
        table.insert(vector, charset:sub(i, i));
    end
    return table.concat(vector);
end

function string.trim(s)
    return (s:gsub("^%s*(.-)%s*$", "%1"));
end
