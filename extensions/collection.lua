---------------------------------------------------------------
--- NCP load
--------------------------------------------------------------- 
local function load_ncp(collection, filename)
    local index = collection:get_study_index();
    local study = Study(index);

    local initial_date = study:get_parameter("ShortTerm", "InitialDate", "");
    local year, month, day = string.match(initial_date, "(%d+)-(%d+)-(%d+)");

    local hour = study:get_parameter("ShortTerm", "InitialHour", 0)

    local epoch = datetime.epoch_from_date(year, month, day);
    local year_hour = datetime.year_hour_from_epoch(epoch) + hour;

    return collection:load(filename):set_initial_stage(year_hour);
end

function Area.load_ncp(self, filename)
    return load_ncp(self, filename);
end

function Battery.load_ncp(self, filename)
    return load_ncp(self, filename);
end

function Bus.load_ncp(self, filename)
    return load_ncp(self, filename);
end

function Circuit.load_ncp(self, filename)
    return load_ncp(self, filename);
end

function CircuitsSum.load_ncp(self, filename)
    return load_ncp(self, filename);
end

function ConcentratedSolarPower.load_ncp(self, filename)
    return load_ncp(self, filename);
end

function DCLink.load_ncp(self, filename)
    return load_ncp(self, filename);
end

function Demand.load_ncp(self, filename)
    return load_ncp(self, filename);
end

function Fuel.load_ncp(self, filename)
    return load_ncp(self, filename);
end

function FuelConsumption.load_ncp(self, filename)
    return load_ncp(self, filename);
end

function FuelContract.load_ncp(self, filename)
    return load_ncp(self, filename);
end

function FuelReservoir.load_ncp(self, filename)
    return load_ncp(self, filename);
end

function Generator.load_ncp(self, filename)
    return load_ncp(self, filename);
end

function GenerationConstraint.load_ncp(self, filename)
    return load_ncp(self, filename);
end

function Generic.load_ncp(self, filename)
    return load_ncp(self, filename);
end

function Hydro.load_ncp(self, filename)
    return load_ncp(self, filename);
end

function HydroGaugingStation.load_ncp(self, filename)
    return load_ncp(self, filename);
end

function Interconnection.load_ncp(self, filename)
    return load_ncp(self, filename);
end

function InterconnectionSum.load_ncp(self, filename)
    return load_ncp(self, filename);
end

function PowerInjection.load_ncp(self, filename)
    return load_ncp(self, filename);
end

function Renewable.load_ncp(self, filename)
    return load_ncp(self, filename);
end

function RenewableGaugingStation.load_ncp(self, filename)
    return load_ncp(self, filename);
end

function ReserveGenerationConstraint.load_ncp(self, filename)
    return load_ncp(self, filename);
end

function ReservoirSet.load_ncp(self, filename)
    return load_ncp(self, filename);
end

function Study.load_ncp(self, filename)
    return load_ncp(self, filename);
end

function System.load_ncp(self, filename)
    return load_ncp(self, filename);
end

function Thermal.load_ncp(self, filename)
    return load_ncp(self, filename);
end

---------------------------------------------------------------
--- Fallback load
--------------------------------------------------------------- 
local function load_or_fallback(collection, filename, options)

    local fallback_value =  options.fallback or 0;
    local unit = options.unit or "pu";
    local data = collection:load(filename);

    if data:loaded() then
        return data;
    else
        warning("Could not load " .. filename .. ". Using fallback value " .. fallback_value);
    end
    
    return (collection.code * 0 + fallback_value):force_unit(unit);
end

function Hydro.load_or_fallback(self, filename, options)
  return load_or_fallback(self, filename, options);
end

function Area.load_or_fallback(self, filename, options)
    return load_or_fallback(self, filename, options);
end

function Battery.load_or_fallback(self, filename, options)
    return load_or_fallback(self, filename, options);
end

function Bus.load_or_fallback(self, filename, options)
    return load_or_fallback(self, filename, options);
end

function Circuit.load_or_fallback(self, filename, options)
    return load_or_fallback(self, filename, options);
end

function CircuitsSum.load_or_fallback(self, filename, options)
    return load_or_fallback(self, filename, options);
end

function ConcentratedSolarPower.load_or_fallback(self, filename, options)
    return load_or_fallback(self, filename, options);
end

function DCLink.load_or_fallback(self, filename, options)
    return load_or_fallback(self, filename, options);
end

function Demand.load_or_fallback(self, filename, options)
    return load_or_fallback(self, filename, options);
end

function Fuel.load_or_fallback(self, filename, options)
    return load_or_fallback(self, filename, options);
end

function FuelConsumption.load_or_fallback(self, filename, options)
    return load_or_fallback(self, filename, options);
end

function FuelContract.load_or_fallback(self, filename, options)
    return load_or_fallback(self, filename, options);
end

function FuelReservoir.load_or_fallback(self, filename, options)
    return load_or_fallback(self, filename, options);
end

function Generator.load_or_fallback(self, filename, options)
    return load_or_fallback(self, filename, options);
end

function GenerationConstraint.load_or_fallback(self, filename, options)
    return load_or_fallback(self, filename, options);
end

function Generic.load_or_fallback(self, filename, options)
    return load_or_fallback(self, filename, options);
end

function Hydro.load_or_fallback(self, filename, options)
    return load_or_fallback(self, filename, options);
end

function HydroGaugingStation.load_or_fallback(self, filename, options)
    return load_or_fallback(self, filename, options);
end

function Interconnection.load_or_fallback(self, filename, options)
    return load_or_fallback(self, filename, options);
end

function InterconnectionSum.load_or_fallback(self, filename, options)
    return load_or_fallback(self, filename, options);
end

function PowerInjection.load_or_fallback(self, filename, options)
    return load_or_fallback(self, filename, options);
end

function Renewable.load_or_fallback(self, filename, options)
    return load_or_fallback(self, filename, options);
end

function RenewableGaugingStation.load_or_fallback(self, filename, options)
    return load_or_fallback(self, filename, options);
end

function ReserveGenerationConstraint.load_or_fallback(self, filename, options)
    return load_or_fallback(self, filename, options);
end

function ReservoirSet.load_or_fallback(self, filename, options)
    return load_or_fallback(self, filename, options);
end

function Study.load_or_fallback(self, filename, options)
    return load_or_fallback(self, filename, options);
end

function System.load_or_fallback(self, filename, options)
    return load_or_fallback(self, filename, options);
end

function Thermal.load_or_fallback(self, filename, options)
    return load_or_fallback(self, filename, options);
end
