local function maximum_operative_storage_violation_cost(suffix)
    local hydro = Hydro();
    local uvcmxost = hydro:load("uvcmxost" .. (suffix or ""));
    local vmxost = hydro:load("vmxost" .. (suffix or ""));
    return uvcmto * vmxost;
end
return maximum_operative_storage_violation_cost;