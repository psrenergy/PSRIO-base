local function irrigation_violation_cost(suffix)
    local hydro = Hydro();
    local uvcrie = hydro:load("uvcrie" .. (suffix or ""));
    local vriego = hydro:load("vriego" .. (suffix or ""));
    return uvcrie * vriego;
end
return irrigation_violation_cost;