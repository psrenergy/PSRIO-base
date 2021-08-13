local function remint(suffix)
    local interconnection = Interconnection();
    local interc = interconnection:load("interc" .. (suffix or "")):convert("MW");
    local cmgint = interconnection:load("cmgint" .. (suffix or ""));
    return (interc * cmgint):abs();
end
return remint;