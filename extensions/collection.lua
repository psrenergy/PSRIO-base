function Area.load_ncp(self, name)
    local study = Study()
    local date = study:get_parameter("ShortTerm", "InitialDate", "o")
    local year, month, day = string.match(date, "(%d+)-(%d+)-(%d+)")
    local epoch = datetime.epoch_from_date(year, month, day)
    local year_hour = datetime.year_hour_from_epoch(epoch)
    return self:load(name):set_initial_stage(year_hour)
end

function BalancingArea.load_ncp(self, name)
    local study = Study()
    local date = study:get_parameter("ShortTerm", "InitialDate", "o")
    local year, month, day = string.match(date, "(%d+)-(%d+)-(%d+)")
    local epoch = datetime.epoch_from_date(year, month, day)
    local year_hour = datetime.year_hour_from_epoch(epoch)
    return self:load(name):set_initial_stage(year_hour)
end

function BalancingAreaHydro.load_ncp(self, name)
    local study = Study()
    local date = study:get_parameter("ShortTerm", "InitialDate", "o")
    local year, month, day = string.match(date, "(%d+)-(%d+)-(%d+)")
    local epoch = datetime.epoch_from_date(year, month, day)
    local year_hour = datetime.year_hour_from_epoch(epoch)
    return self:load(name):set_initial_stage(year_hour)
end

function BalancingAreaThermal.load_ncp(self, name)
    local study = Study()
    local date = study:get_parameter("ShortTerm", "InitialDate", "o")
    local year, month, day = string.match(date, "(%d+)-(%d+)-(%d+)")
    local epoch = datetime.epoch_from_date(year, month, day)
    local year_hour = datetime.year_hour_from_epoch(epoch)
    return self:load(name):set_initial_stage(year_hour)
end

function Battery.load_ncp(self, name)
    local study = Study()
    local date = study:get_parameter("ShortTerm", "InitialDate", "o")
    local year, month, day = string.match(date, "(%d+)-(%d+)-(%d+)")
    local epoch = datetime.epoch_from_date(year, month, day)
    local year_hour = datetime.year_hour_from_epoch(epoch)
    return self:load(name):set_initial_stage(year_hour)
end

function Bus.load_ncp(self, name)
    local study = Study()
    local date = study:get_parameter("ShortTerm", "InitialDate", "o")
    local year, month, day = string.match(date, "(%d+)-(%d+)-(%d+)")
    local epoch = datetime.epoch_from_date(year, month, day)
    local year_hour = datetime.year_hour_from_epoch(epoch)
    return self:load(name):set_initial_stage(year_hour)
end

function Circuit.load_ncp(self, name)
    local study = Study()
    local date = study:get_parameter("ShortTerm", "InitialDate", "o")
    local year, month, day = string.match(date, "(%d+)-(%d+)-(%d+)")
    local epoch = datetime.epoch_from_date(year, month, day)
    local year_hour = datetime.year_hour_from_epoch(epoch)
    return self:load(name):set_initial_stage(year_hour)
end

function CircuitsSum.load_ncp(self, name)
    local study = Study()
    local date = study:get_parameter("ShortTerm", "InitialDate", "o")
    local year, month, day = string.match(date, "(%d+)-(%d+)-(%d+)")
    local epoch = datetime.epoch_from_date(year, month, day)
    local year_hour = datetime.year_hour_from_epoch(epoch)
    return self:load(name):set_initial_stage(year_hour)
end

function ConcentratedSolarPower.load_ncp(self, name)
    local study = Study()
    local date = study:get_parameter("ShortTerm", "InitialDate", "o")
    local year, month, day = string.match(date, "(%d+)-(%d+)-(%d+)")
    local epoch = datetime.epoch_from_date(year, month, day)
    local year_hour = datetime.year_hour_from_epoch(epoch)
    return self:load(name):set_initial_stage(year_hour)
end

function DCLink.load_ncp(self, name)
    local study = Study()
    local date = study:get_parameter("ShortTerm", "InitialDate", "o")
    local year, month, day = string.match(date, "(%d+)-(%d+)-(%d+)")
    local epoch = datetime.epoch_from_date(year, month, day)
    local year_hour = datetime.year_hour_from_epoch(epoch)
    return self:load(name):set_initial_stage(year_hour)
end

function Demand.load_ncp(self, name)
    local study = Study()
    local date = study:get_parameter("ShortTerm", "InitialDate", "o")
    local year, month, day = string.match(date, "(%d+)-(%d+)-(%d+)")
    local epoch = datetime.epoch_from_date(year, month, day)
    local year_hour = datetime.year_hour_from_epoch(epoch)
    return self:load(name):set_initial_stage(year_hour)
end

function DemandSegment.load_ncp(self, name)
    local study = Study()
    local date = study:get_parameter("ShortTerm", "InitialDate", "o")
    local year, month, day = string.match(date, "(%d+)-(%d+)-(%d+)")
    local epoch = datetime.epoch_from_date(year, month, day)
    local year_hour = datetime.year_hour_from_epoch(epoch)
    return self:load(name):set_initial_stage(year_hour)
end

function ExpansionCapacity.load_ncp(self, name)
    local study = Study()
    local date = study:get_parameter("ShortTerm", "InitialDate", "o")
    local year, month, day = string.match(date, "(%d+)-(%d+)-(%d+)")
    local epoch = datetime.epoch_from_date(year, month, day)
    local year_hour = datetime.year_hour_from_epoch(epoch)
    return self:load(name):set_initial_stage(year_hour)
end

function ExpansionProject.load_ncp(self, name)
    local study = Study()
    local date = study:get_parameter("ShortTerm", "InitialDate", "o")
    local year, month, day = string.match(date, "(%d+)-(%d+)-(%d+)")
    local epoch = datetime.epoch_from_date(year, month, day)
    local year_hour = datetime.year_hour_from_epoch(epoch)
    return self:load(name):set_initial_stage(year_hour)
end

function Fuel.load_ncp(self, name)
    local study = Study()
    local date = study:get_parameter("ShortTerm", "InitialDate", "o")
    local year, month, day = string.match(date, "(%d+)-(%d+)-(%d+)")
    local epoch = datetime.epoch_from_date(year, month, day)
    local year_hour = datetime.year_hour_from_epoch(epoch)
    return self:load(name):set_initial_stage(year_hour)
end

function FuelConsumption.load_ncp(self, name)
    local study = Study()
    local date = study:get_parameter("ShortTerm", "InitialDate", "o")
    local year, month, day = string.match(date, "(%d+)-(%d+)-(%d+)")
    local epoch = datetime.epoch_from_date(year, month, day)
    local year_hour = datetime.year_hour_from_epoch(epoch)
    return self:load(name):set_initial_stage(year_hour)
end

function FuelContract.load_ncp(self, name)
    local study = Study()
    local date = study:get_parameter("ShortTerm", "InitialDate", "o")
    local year, month, day = string.match(date, "(%d+)-(%d+)-(%d+)")
    local epoch = datetime.epoch_from_date(year, month, day)
    local year_hour = datetime.year_hour_from_epoch(epoch)
    return self:load(name):set_initial_stage(year_hour)
end

function FuelReservoir.load_ncp(self, name)
    local study = Study()
    local date = study:get_parameter("ShortTerm", "InitialDate", "o")
    local year, month, day = string.match(date, "(%d+)-(%d+)-(%d+)")
    local epoch = datetime.epoch_from_date(year, month, day)
    local year_hour = datetime.year_hour_from_epoch(epoch)
    return self:load(name):set_initial_stage(year_hour)
end

function Generator.load_ncp(self, name)
    local study = Study()
    local date = study:get_parameter("ShortTerm", "InitialDate", "o")
    local year, month, day = string.match(date, "(%d+)-(%d+)-(%d+)")
    local epoch = datetime.epoch_from_date(year, month, day)
    local year_hour = datetime.year_hour_from_epoch(epoch)
    return self:load(name):set_initial_stage(year_hour)
end

function GenerationConstraint.load_ncp(self, name)
    local study = Study()
    local date = study:get_parameter("ShortTerm", "InitialDate", "o")
    local year, month, day = string.match(date, "(%d+)-(%d+)-(%d+)")
    local epoch = datetime.epoch_from_date(year, month, day)
    local year_hour = datetime.year_hour_from_epoch(epoch)
    return self:load(name):set_initial_stage(year_hour)
end

function Generic.load_ncp(self, name)
    local study = Study()
    local date = study:get_parameter("ShortTerm", "InitialDate", "o")
    local year, month, day = string.match(date, "(%d+)-(%d+)-(%d+)")
    local epoch = datetime.epoch_from_date(year, month, day)
    local year_hour = datetime.year_hour_from_epoch(epoch)
    return self:load(name):set_initial_stage(year_hour)
end

function Hydro.load_ncp(self, name)
    local study = Study()
    local date = study:get_parameter("ShortTerm", "InitialDate", "o")
    local year, month, day = string.match(date, "(%d+)-(%d+)-(%d+)")
    local epoch = datetime.epoch_from_date(year, month, day)
    local year_hour = datetime.year_hour_from_epoch(epoch)
    return self:load(name):set_initial_stage(year_hour)
end

function HydroGaugingStation.load_ncp(self, name)
    local study = Study()
    local date = study:get_parameter("ShortTerm", "InitialDate", "o")
    local year, month, day = string.match(date, "(%d+)-(%d+)-(%d+)")
    local epoch = datetime.epoch_from_date(year, month, day)
    local year_hour = datetime.year_hour_from_epoch(epoch)
    return self:load(name):set_initial_stage(year_hour)
end

function Interconnection.load_ncp(self, name)
    local study = Study()
    local date = study:get_parameter("ShortTerm", "InitialDate", "o")
    local year, month, day = string.match(date, "(%d+)-(%d+)-(%d+)")
    local epoch = datetime.epoch_from_date(year, month, day)
    local year_hour = datetime.year_hour_from_epoch(epoch)
    return self:load(name):set_initial_stage(year_hour)
end

function InterconnectionSum.load_ncp(self, name)
    local study = Study()
    local date = study:get_parameter("ShortTerm", "InitialDate", "o")
    local year, month, day = string.match(date, "(%d+)-(%d+)-(%d+)")
    local epoch = datetime.epoch_from_date(year, month, day)
    local year_hour = datetime.year_hour_from_epoch(epoch)
    return self:load(name):set_initial_stage(year_hour)
end

function PowerInjection.load_ncp(self, name)
    local study = Study()
    local date = study:get_parameter("ShortTerm", "InitialDate", "o")
    local year, month, day = string.match(date, "(%d+)-(%d+)-(%d+)")
    local epoch = datetime.epoch_from_date(year, month, day)
    local year_hour = datetime.year_hour_from_epoch(epoch)
    return self:load(name):set_initial_stage(year_hour)
end

function Renewable.load_ncp(self, name)
    local study = Study()
    local date = study:get_parameter("ShortTerm", "InitialDate", "o")
    local year, month, day = string.match(date, "(%d+)-(%d+)-(%d+)")
    local epoch = datetime.epoch_from_date(year, month, day)
    local year_hour = datetime.year_hour_from_epoch(epoch)
    return self:load(name):set_initial_stage(year_hour)
end

function RenewableGaugingStation.load_ncp(self, name)
    local study = Study()
    local date = study:get_parameter("ShortTerm", "InitialDate", "o")
    local year, month, day = string.match(date, "(%d+)-(%d+)-(%d+)")
    local epoch = datetime.epoch_from_date(year, month, day)
    local year_hour = datetime.year_hour_from_epoch(epoch)
    return self:load(name):set_initial_stage(year_hour)
end

function ReserveGenerationConstraint.load_ncp(self, name)
    local study = Study()
    local date = study:get_parameter("ShortTerm", "InitialDate", "o")
    local year, month, day = string.match(date, "(%d+)-(%d+)-(%d+)")
    local epoch = datetime.epoch_from_date(year, month, day)
    local year_hour = datetime.year_hour_from_epoch(epoch)
    return self:load(name):set_initial_stage(year_hour)
end

function ReservoirSet.load_ncp(self, name)
    local study = Study()
    local date = study:get_parameter("ShortTerm", "InitialDate", "o")
    local year, month, day = string.match(date, "(%d+)-(%d+)-(%d+)")
    local epoch = datetime.epoch_from_date(year, month, day)
    local year_hour = datetime.year_hour_from_epoch(epoch)
    return self:load(name):set_initial_stage(year_hour)
end

function Study.load_ncp(self, name)
    local study = Study()
    local date = study:get_parameter("ShortTerm", "InitialDate", "o")
    local year, month, day = string.match(date, "(%d+)-(%d+)-(%d+)")
    local epoch = datetime.epoch_from_date(year, month, day)
    local year_hour = datetime.year_hour_from_epoch(epoch)
    return self:load(name):set_initial_stage(year_hour)
end

function System.load_ncp(self, name)
    local study = Study()
    local date = study:get_parameter("ShortTerm", "InitialDate", "o")
    local year, month, day = string.match(date, "(%d+)-(%d+)-(%d+)")
    local epoch = datetime.epoch_from_date(year, month, day)
    local year_hour = datetime.year_hour_from_epoch(epoch)
    return self:load(name):set_initial_stage(year_hour)
end

function Thermal.load_ncp(self, name)
    local study = Study()
    local date = study:get_parameter("ShortTerm", "InitialDate", "o")
    local year, month, day = string.match(date, "(%d+)-(%d+)-(%d+)")
    local epoch = datetime.epoch_from_date(year, month, day)
    local year_hour = datetime.year_hour_from_epoch(epoch)
    return self:load(name):set_initial_stage(year_hour)
end