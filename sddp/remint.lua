local function remint(i, suffix)
    local interconnection = Interconnection(i or 1);
    local interc = interconnection:load("interc" .. (suffix or "")):convert("MW");
    local cmgint = interconnection:load("cmgint" .. (suffix or ""));
    return (interc * cmgint):abs();
end
return remint;