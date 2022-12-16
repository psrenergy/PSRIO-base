local function usernw(suffix)
    local renewable = Renewable();

    local renewable_generation = renewable:load("gergnd" .. (suffix or "")):convert("MW");

    return ifelse(renewable.capacity:eq(0), 0, renewable_generation / renewable.capacity):convert("%");
end
return usernw;