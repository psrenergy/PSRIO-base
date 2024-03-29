-- https://stackoverflow.com/questions/15706270/sort-a-table-in-lua
local function spairs(data, compare)
    -- collect the keys
    local keys = {};
    for k in pairs(data) do
        keys[#keys + 1] = k;
    end

    -- if compare function given, sort by it by passing the table and keys a, b, otherwise just sort the keys
    if compare then
        table.sort(
            keys, function(a, b)
                return compare(data, a, b);
            end
        );
    else
        table.sort(keys);
    end

    -- return the iterator function
    local i = 0;
    return function()
        i = i + 1;
        if keys[i] then
            return keys[i], data[keys[i]];
        end
    end
end
return spairs;
