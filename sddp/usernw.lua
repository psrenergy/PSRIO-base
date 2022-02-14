local function usernw(suffix)
    local renewable = Renewable();
    local gergnd = renewable:load("gergnd" .. (suffix or "")):convert("MW");
    return ifelse(renewable.capacity:eq(0), 0, gergnd / renewable.capacity):convert("%");
end
return usernw;