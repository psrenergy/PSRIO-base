-- Thermal extensions
function Thermal.generation(self)
    return self:load("gerter");
end

-- Hydro extensions
function Hydro.generation(self)
    return self:load("gerhid");
end

-- Renewable extensions
function Renewable.generation(self)
    return self:load("gergnd");
end

-- Battery extensions
function Battery.generation(self)
    return self:load("gerbat");
end
