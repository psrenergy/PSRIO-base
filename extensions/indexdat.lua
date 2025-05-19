-------------------------------------------------------------------------
--Hydro extension
-------------------------------------------------------------------------

function Hydro.available_capacity(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("pothid");
   else
       error("Model not supported");
   end
end

function Hydro.historical_inflow(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("histav");
   else
       error("Model not supported");
   end
end

function Hydro.inflow(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("inflow");
   else
       error("Model not supported");
   end
end

function Hydro.security_storage(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("volmno");
   else
       error("Model not supported");
   end
end

function Hydro.min_turbining(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("qminim");
   else
       error("Model not supported");
   end
end

function Hydro.spillage_unitary_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("cpnspl");
   else
       error("Model not supported");
   end
end

function Hydro.alert_violation_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("cvlale");
   else
       error("Model not supported");
   end
end

function Hydro.max_total_outflow_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("cvlxto");
   else
       error("Model not supported");
   end
end

function Hydro.min_op_storage_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("cvlmin");
   else
       error("Model not supported");
   end
end

function Hydro.min_total_outflow_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("cvlmto");
   else
       error("Model not supported");
   end
end

function Hydro.final_head(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("cotfin");
   else
       error("Model not supported");
   end
end

function Hydro.final_storage(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("volfin");
   else
       error("Model not supported");
   end
end

function Hydro.generation(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("gerhid");
   else
       error("Model not supported");
   end
end

function Hydro.spillage(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("qverti");
   else
       error("Model not supported");
   end
end

function Hydro.turbining(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("qturbi");
   else
       error("Model not supported");
   end
end

function Hydro.water_value(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("mgvwat");
   else
       error("Model not supported");
   end
end

function Hydro.max_storage_marg_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("cmgemb");
   else
       error("Model not supported");
   end
end

function Hydro.prod_factor_marg_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("cmgroh");
   else
       error("Model not supported");
   end
end

function Hydro.max_turbining_marg_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("cmgtur");
   else
       error("Model not supported");
   end
end

function Hydro.bus_income(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("ghcmgb");
   else
       error("Model not supported");
   end
end

function Hydro.production_factor(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("fprodt");
   else
       error("Model not supported");
   end
end

function Hydro.opportunity_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("oppchg");
   else
       error("Model not supported");
   end
end

function Hydro.nominal_capacity(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("pnomhd");
   else
       error("Model not supported");
   end
end

function Hydro.operating_units(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("nuohid");
   else
       error("Model not supported");
   end
end

function Hydro.flood_control_storage(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("volesp");
   else
       error("Model not supported");
   end
end

function Hydro.turbinable_spilled_energy(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("envetu");
   else
       error("Model not supported");
   end
end

function Hydro.min_turbining_violation_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("cvlmtu");
   else
       error("Model not supported");
   end
end

function Hydro.irrigation_violation(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("vriego");
   else
       error("Model not supported");
   end
end

function Hydro.single_reserve_req(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("rrodhd");
   else
       error("Model not supported");
   end
end

function Hydro.security_storage_violation(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("vvolmn");
   else
       error("Model not supported");
   end
end

function Hydro.alert_storage_violation(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("vvaler");
   else
       error("Model not supported");
   end
end

function Hydro.min_turbining_violation(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("vturmn");
   else
       error("Model not supported");
   end
end

function Hydro.max_total_outflow_violation(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("vdefmx");
   else
       error("Model not supported");
   end
end

function Hydro.min_total_outflow_violation(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("vdefmn");
   else
       error("Model not supported");
   end
end

function Hydro.production_factor_65(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("prod65");
   else
       error("Model not supported");
   end
end

function Hydro.stored_energy(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("eneemb");
   else
       error("Model not supported");
   end
end

function Hydro.capacity_margin(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("resghd");
   else
       error("Model not supported");
   end
end

function Hydro.single_reserve(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("rghpri");
   else
       error("Model not supported");
   end
end

function Hydro.joint_reserve(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("rghsec");
   else
       error("Model not supported");
   end
end

function Hydro.shp_prod_factor(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("fprocv");
   else
       error("Model not supported");
   end
end

function Hydro.min_turb_outflow_marg_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("cmgtmn");
   else
       error("Model not supported");
   end
end

function Hydro.capacity_without_outages(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("phidsf");
   else
       error("Model not supported");
   end
end

function Hydro.filtration(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("qfiltr");
   else
       error("Model not supported");
   end
end

function Hydro.dispatch_factor(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("usehid");
   else
       error("Model not supported");
   end
end

function Hydro.evaporation(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("qevapo");
   else
       error("Model not supported");
   end
end

function Hydro.irrigation_penalty(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("penrie");
   else
       error("Model not supported");
   end
end

function Hydro.single_reserve_marg_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("cmgrrh");
   else
       error("Model not supported");
   end
end

function Hydro.available_turbining(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("qmxdsp");
   else
       error("Model not supported");
   end
end

function Hydro.volume_variations(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("voljun");
   else
       error("Model not supported");
   end
end

function Hydro.lgc_gen_above_ref(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("lgcgen");
   else
       error("Model not supported");
   end
end

function Hydro.lgc_revenue(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("lgcrev");
   else
       error("Model not supported");
   end
end

function Hydro.initial_storage(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("volini");
   else
       error("Model not supported");
   end
end

function Hydro.spilled_energy(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("envehd");
   else
       error("Model not supported");
   end
end

function Hydro.final_storage_perc(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("volfinvu");
   else
       error("Model not supported");
   end
end

function Hydro.system_income(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("ghcmgs");
   else
       error("Model not supported");
   end
end

function Hydro.typical_final_storage(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("volfintd");
   else
       error("Model not supported");
   end
end

function Hydro.chron_final_storage(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("volfincw");
   else
       error("Model not supported");
   end
end

function Hydro.min_spillage_violation(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("vimnsp");
   else
       error("Model not supported");
   end
end

function Hydro.min_spillage_violation_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("cvlmso");
   else
       error("Model not supported");
   end
end

function Hydro.spillage_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("hspcost");
   else
       error("Model not supported");
   end
end

function Hydro.joint_reserve_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("srsvch");
   else
       error("Model not supported");
   end
end

function Hydro.inflow_energy(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("enafhd");
   else
       error("Model not supported");
   end
end

function Hydro.acc_production_factor(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("fprodtac");
   else
       error("Model not supported");
   end
end

function Hydro.target_storage_violation(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("wvtarget");
   else
       error("Model not supported");
   end
end

function Hydro.max_op_storage_violation_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("cvvmxo");
   else
       error("Model not supported");
   end
end

function Hydro.max_op_storage_violation(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("vmxost");
   else
       error("Model not supported");
   end
end

function Hydro.max_op_storage(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("mxops");
   else
       error("Model not supported");
   end
end

function Hydro.max_op_storage_marg_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("mcmxos");
   else
       error("Model not supported");
   end
end

function Hydro.max_spillage_violation(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("vimxsp");
   else
       error("Model not supported");
   end
end

function Hydro.max_spillage_violation_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("cvlmxso");
   else
       error("Model not supported");
   end
end

function Hydro.acc_prod_factor_65(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("prodac65");
   else
       error("Model not supported");
   end
end

function Hydro.max_stored_energy(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("eembmx");
   else
       error("Model not supported");
   end
end

function Hydro.outflow_ramp_violation(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("rampvio");
   else
       error("Model not supported");
   end
end

function Hydro.stored_energy_perc(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("enembp");
   else
       error("Model not supported");
   end
end

function Hydro.curve_violation(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("vioguide");
   else
       error("Model not supported");
   end
end

function Hydro.joint_reserve_nexc(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("rshnexc");
   else
       error("Model not supported");
   end
end

function Hydro.spill_lost_energy(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("enveper");
   else
       error("Model not supported");
   end
end

function Hydro.tailwater_elevation(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("cotjus");
   else
       error("Model not supported");
   end
end

function Hydro.total_inflow(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("tinflow");
   else
       error("Model not supported");
   end
end

function Hydro.max_joint_reserve(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("hidmxreser");
   else
       error("Model not supported");
   end
end

function Hydro.joint_reserve_price(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("hidbdprc");
   else
       error("Model not supported");
   end
end

function Hydro.upstream_plants(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("upinflow");
   else
       error("Model not supported");
   end
end

function Hydro.turbinable_spilled_outflow(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("turbspil");
   else
       error("Model not supported");
   end
end

-------------------------------------------------------------------------
--Thermal extension
-------------------------------------------------------------------------

function Thermal.available_capacity(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("potter");
   else
       error("Model not supported");
   end
end

function Thermal.operating_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("coster");
   else
       error("Model not supported");
   end
end

function Thermal.generation(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("gerter");
   else
       error("Model not supported");
   end
end

function Thermal.capacity_marg_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("cmgter");
   else
       error("Model not supported");
   end
end

function Thermal.bus_income(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("gtcmgb");
   else
       error("Model not supported");
   end
end

function Thermal.net_min_generation(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("pmnter");
   else
       error("Model not supported");
   end
end

function Thermal.unitary_cost_seg1(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("cinte1");
   else
       error("Model not supported");
   end
end

function Thermal.unitary_cost_seg2(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("cinte2");
   else
       error("Model not supported");
   end
end

function Thermal.unitary_cost_seg3(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("cinte3");
   else
       error("Model not supported");
   end
end

function Thermal.input_startup_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("datarr");
   else
       error("Model not supported");
   end
end

function Thermal.operating_units(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("nuoter");
   else
       error("Model not supported");
   end
end

function Thermal.nominal_capacity(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("pnomtr");
   else
       error("Model not supported");
   end
end

function Thermal.single_reserve_req(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("rrodtr");
   else
       error("Model not supported");
   end
end

function Thermal.operative_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("cotfue");
   else
       error("Model not supported");
   end
end

function Thermal.gas_consumption(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("gascmp");
   else
       error("Model not supported");
   end
end

function Thermal.fuel_consumption(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("fueltr");
   else
       error("Model not supported");
   end
end

function Thermal.capacity_margin(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("resgtr");
   else
       error("Model not supported");
   end
end

function Thermal.single_reserve(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("rgtpri");
   else
       error("Model not supported");
   end
end

function Thermal.joint_reserve(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("rgtsec");
   else
       error("Model not supported");
   end
end

function Thermal.dispatch_factor(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("useter");
   else
       error("Model not supported");
   end
end

function Thermal.single_reserve_marg_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("cmgrrt");
   else
       error("Model not supported");
   end
end

function Thermal.carbon_emission_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("cosco2");
   else
       error("Model not supported");
   end
end

function Thermal.total_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("ctrco2");
   else
       error("Model not supported");
   end
end

function Thermal.carbon_emission(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("eco2tr");
   else
       error("Model not supported");
   end
end

function Thermal.carbon_cost_seg1(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("emico1");
   else
       error("Model not supported");
   end
end

function Thermal.carbon_cost_seg2(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("emico2");
   else
       error("Model not supported");
   end
end

function Thermal.carbon_cost_seg3(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("emico3");
   else
       error("Model not supported");
   end
end

function Thermal.contract_consumption(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("trcofc");
   else
       error("Model not supported");
   end
end

function Thermal.reservoir_consumption(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("trcofr");
   else
       error("Model not supported");
   end
end

function Thermal.system_income(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("gtcmgs");
   else
       error("Model not supported");
   end
end

function Thermal.min_generation_violation(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("vgmntt");
   else
       error("Model not supported");
   end
end

function Thermal.min_generation_violation_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("cgmntt");
   else
       error("Model not supported");
   end
end

function Thermal.joint_reserve_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("srsvct");
   else
       error("Model not supported");
   end
end

function Thermal.commitment(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("commit");
   else
       error("Model not supported");
   end
end

function Thermal.startup(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("trstup");
   else
       error("Model not supported");
   end
end

function Thermal.min_generation_ctr_violation(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("vgmint");
   else
       error("Model not supported");
   end
end

function Thermal.min_generation_ctr_violation_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("cgmint");
   else
       error("Model not supported");
   end
end

function Thermal.joint_reserve_nexc(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("rstnexc");
   else
       error("Model not supported");
   end
end

function Thermal.combined_cycle_state(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("occterm");
   else
       error("Model not supported");
   end
end

function Thermal.shutdown(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("trshdw");
   else
       error("Model not supported");
   end
end

function Thermal.cost_seg_1(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("gemico1");
   else
       error("Model not supported");
   end
end

function Thermal.cost_seg_2(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("gemico2");
   else
       error("Model not supported");
   end
end

function Thermal.cost_seg_3(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("gemico3");
   else
       error("Model not supported");
   end
end

function Thermal.max_joint_reserve(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("termxreser");
   else
       error("Model not supported");
   end
end

function Thermal.joint_reserve_price(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("terbdprc");
   else
       error("Model not supported");
   end
end

-------------------------------------------------------------------------
--System extension
-------------------------------------------------------------------------

function System.demand(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("demand");
   else
       error("Model not supported");
   end
end

function System.max_stored_energy(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("earmzm");
   else
       error("Model not supported");
   end
end

function System.deficit_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("defcos");
   else
       error("Model not supported");
   end
end

function System.deficit(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("defcit");
   else
       error("Model not supported");
   end
end

function System.stored_energy(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("enearm");
   else
       error("Model not supported");
   end
end

function System.marginal_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("cmgdem");
   else
       error("Model not supported");
   end
end

function System.load_rationing(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("vere00");
   else
       error("Model not supported");
   end
end

function System.expected_load_rationing(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("vere15");
   else
       error("Model not supported");
   end
end

function System.inflow_energy(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("enaflu");
   else
       error("Model not supported");
   end
end

function System.block_duration(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("duraci");
   else
       error("Model not supported");
   end
end

function System.spilled_energy(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("enever");
   else
       error("Model not supported");
   end
end

function System.ref_inflow_energy(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("enaflm");
   else
       error("Model not supported");
   end
end

function System.stored_energy_perc(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("enearp");
   else
       error("Model not supported");
   end
end

function System.inflow_energy_65(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("enaf65");
   else
       error("Model not supported");
   end
end

function System.shp_stored_energy(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("enapcv");
   else
       error("Model not supported");
   end
end

function System.risk_aversion_limit(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("arismn");
   else
       error("Model not supported");
   end
end

function System.risk_aversion_marg_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("cmgari");
   else
       error("Model not supported");
   end
end

function System.risk_aversion_violation_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("cvlari");
   else
       error("Model not supported");
   end
end

function System.risk_aversion_violation(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("viocar");
   else
       error("Model not supported");
   end
end

function System.demand_supplied(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("demandel");
   else
       error("Model not supported");
   end
end

function System.max_demand(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("demandmx");
   else
       error("Model not supported");
   end
end

function System.max_stored_energy_65(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("earm65");
   else
       error("Model not supported");
   end
end

function System.deficit_perc(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("defcitp");
   else
       error("Model not supported");
   end
end

function System.stored_energy_65(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("enearm65");
   else
       error("Model not supported");
   end
end

function System.immediate_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("objics");
   else
       error("Model not supported");
   end
end

function System.deficit_risk(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("sddprisk");
   else
       error("Model not supported");
   end
end

-------------------------------------------------------------------------
--Bus extension
-------------------------------------------------------------------------

function Bus.demand(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("demxba");
   else
       error("Model not supported");
   end
end

function Bus.deficit(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("defbus");
   else
       error("Model not supported");
   end
end

function Bus.marginal_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("cmgbus");
   else
       error("Model not supported");
   end
end

function Bus.total_income(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("tarimn");
   else
       error("Model not supported");
   end
end

function Bus.voltage_angle(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("angulo");
   else
       error("Model not supported");
   end
end

function Bus.ac_outflow(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("wdrbus");
   else
       error("Model not supported");
   end
end

function Bus.load_supplied(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("demxbael");
   else
       error("Model not supported");
   end
end

function Bus.island_idx(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("island");
   else
       error("Model not supported");
   end
end

function Bus.max_load(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("demxbamx");
   else
       error("Model not supported");
   end
end

function Bus.deficit_perc(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("defbusp");
   else
       error("Model not supported");
   end
end

function Bus.load_income(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("dmcmgb");
   else
       error("Model not supported");
   end
end

function Bus.lerner_idx(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("lnrbus");
   else
       error("Model not supported");
   end
end

function Bus.ac_injection(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("businj");
   else
       error("Model not supported");
   end
end

function Bus.cc_outflow(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("wdrbusdc");
   else
       error("Model not supported");
   end
end

function Bus.cc_injection(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("businjdc");
   else
       error("Model not supported");
   end
end

function Bus.voltage(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("mtensdc");
   else
       error("Model not supported");
   end
end

-------------------------------------------------------------------------
--Circuit extension
-------------------------------------------------------------------------

function Circuit.flow(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("cirflw");
   else
       error("Model not supported");
   end
end

function Circuit.capacity_marg_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("cmgcir");
   else
       error("Model not supported");
   end
end

function Circuit.max_flow(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("maxflw");
   else
       error("Model not supported");
   end
end

function Circuit.income(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("ingtci");
   else
       error("Model not supported");
   end
end

function Circuit.losses(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("losses");
   else
       error("Model not supported");
   end
end

function Circuit.operative_status(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("mntcir");
   else
       error("Model not supported");
   end
end

function Circuit.quadratic_losses(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("qdrlss");
   else
       error("Model not supported");
   end
end

function Circuit.loading_factor(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("usecir");
   else
       error("Model not supported");
   end
end

function Circuit.overload(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("cflwvio");
   else
       error("Model not supported");
   end
end

function Circuit.overload_penalty(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("cflwpen");
   else
       error("Model not supported");
   end
end

function Circuit.joint_reserve(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("rgcsec");
   else
       error("Model not supported");
   end
end

function Circuit.dynamic_line_rating(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("dlrcap");
   else
       error("Model not supported");
   end
end

function Circuit.losses_mismatch(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("lsserac");
   else
       error("Model not supported");
   end
end

-------------------------------------------------------------------------
--Area extension
-------------------------------------------------------------------------

function Area.transfer(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("areexp");
   else
       error("Model not supported");
   end
end

function Area.max_trasnfer(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("areexpl");
   else
       error("Model not supported");
   end
end

function Area.min_transfer(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("areimpl");
   else
       error("Model not supported");
   end
end

-------------------------------------------------------------------------
--Fuel extension
-------------------------------------------------------------------------

function Fuel.consumption(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("fuelcn");
   else
       error("Model not supported");
   end
end

function Fuel.consumption_rate(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("fuelrt");
   else
       error("Model not supported");
   end
end

function Fuel.marginal_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("cmgfco");
   else
       error("Model not supported");
   end
end

function Fuel.consumption_rate_marg_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("cmgfra");
   else
       error("Model not supported");
   end
end

function Fuel.max_consumption_rate(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("fuecrt");
   else
       error("Model not supported");
   end
end

function Fuel.price(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("fuelpr");
   else
       error("Model not supported");
   end
end

-------------------------------------------------------------------------
--Interconnection extension
-------------------------------------------------------------------------

function Interconnection.flow(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("interc");
   else
       error("Model not supported");
   end
end

function Interconnection.marginal_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("cmgint");
   else
       error("Model not supported");
   end
end

function Interconnection.capacity_from_to(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("capint1");
   else
       error("Model not supported");
   end
end

function Interconnection.income(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("remint");
   else
       error("Model not supported");
   end
end

function Interconnection.cost_from_to(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("cinter1");
   else
       error("Model not supported");
   end
end

function Interconnection.total_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("cosint");
   else
       error("Model not supported");
   end
end

function Interconnection.losses(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("losint");
   else
       error("Model not supported");
   end
end

function Interconnection.capacity_to_from(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("capint2");
   else
       error("Model not supported");
   end
end

function Interconnection.cost_to_from(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("cinter2");
   else
       error("Model not supported");
   end
end

function Interconnection.joint_reserve(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("rgisec");
   else
       error("Model not supported");
   end
end

-------------------------------------------------------------------------
--PowerInjection extension
-------------------------------------------------------------------------

function PowerInjection.violation(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("finjvio");
   else
       error("Model not supported");
   end
end

function PowerInjection.value(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("powinj");
   else
       error("Model not supported");
   end
end

function PowerInjection.cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("cosinj");
   else
       error("Model not supported");
   end
end

function PowerInjection.marginal_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("cmginj");
   else
       error("Model not supported");
   end
end

-------------------------------------------------------------------------
--Battery extension
-------------------------------------------------------------------------

function Battery.joint_reserve_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("srsvcb");
   else
       error("Model not supported");
   end
end

function Battery.stored_energy(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("pbatstg");
   else
       error("Model not supported");
   end
end

function Battery.generation(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("gerbat");
   else
       error("Model not supported");
   end
end

function Battery.final_storage(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("batstg");
   else
       error("Model not supported");
   end
end

function Battery.storage_capacity_marg_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("cmgbts");
   else
       error("Model not supported");
   end
end

function Battery.capacity_marg_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("cmgbtc");
   else
       error("Model not supported");
   end
end

function Battery.joint_reserve(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("rgbsec");
   else
       error("Model not supported");
   end
end

function Battery.nominal_capacity(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("pnombat");
   else
       error("Model not supported");
   end
end

function Battery.losses(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("lossbat");
   else
       error("Model not supported");
   end
end

function Battery.om_unitary_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("oembatun");
   else
       error("Model not supported");
   end
end

function Battery.bus_income(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("gbcmgb");
   else
       error("Model not supported");
   end
end

function Battery.system_income(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("gbcmgs");
   else
       error("Model not supported");
   end
end

function Battery.joint_reserve_nexc(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("rsbnexc");
   else
       error("Model not supported");
   end
end

function Battery.available_capacity(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("potbat");
   else
       error("Model not supported");
   end
end

function Battery.storage_marg_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("mgvbat");
   else
       error("Model not supported");
   end
end

function Battery.initial_storage(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("batstgi");
   else
       error("Model not supported");
   end
end

function Battery.joint_reserve_price(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("batbdprc");
   else
       error("Model not supported");
   end
end

function Battery.max_joint_reserve(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("batmxreser");
   else
       error("Model not supported");
   end
end

function Battery.single_reserve(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("rgbpri");
   else
       error("Model not supported");
   end
end

-------------------------------------------------------------------------
--ConcentratedSolarPower extension
-------------------------------------------------------------------------

function ConcentratedSolarPower.joint_reserve_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("srsvcc");
   else
       error("Model not supported");
   end
end

function ConcentratedSolarPower.nominal_capacity(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("pnomcsp");
   else
       error("Model not supported");
   end
end

function ConcentratedSolarPower.generation(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("cspgen");
   else
       error("Model not supported");
   end
end

function ConcentratedSolarPower.storage(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("cspstor");
   else
       error("Model not supported");
   end
end

function ConcentratedSolarPower.storage_capacity_marg_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("cspstomc");
   else
       error("Model not supported");
   end
end

function ConcentratedSolarPower.stored_heat(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("cspstova");
   else
       error("Model not supported");
   end
end

function ConcentratedSolarPower.charge(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("cspchg");
   else
       error("Model not supported");
   end
end

function ConcentratedSolarPower.discharge(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("cspdchg");
   else
       error("Model not supported");
   end
end

function ConcentratedSolarPower.capacity_marg_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("cspcapmc");
   else
       error("Model not supported");
   end
end

function ConcentratedSolarPower.joint_reserve(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("rcsp");
   else
       error("Model not supported");
   end
end

function ConcentratedSolarPower.joint_reserve_nexc(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("rcspnexc");
   else
       error("Model not supported");
   end
end

function ConcentratedSolarPower.scenario(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("cspscen");
   else
       error("Model not supported");
   end
end

function ConcentratedSolarPower.capacity_scenario(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("potcsp");
   else
       error("Model not supported");
   end
end

-------------------------------------------------------------------------
--GenerationConstraint extension
-------------------------------------------------------------------------

function GenerationConstraint.value(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("resgen");
   else
       error("Model not supported");
   end
end

function GenerationConstraint.violation(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("vrestg");
   else
       error("Model not supported");
   end
end

function GenerationConstraint.violation_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("penreg");
   else
       error("Model not supported");
   end
end

function GenerationConstraint.marginal_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("cmgreg");
   else
       error("Model not supported");
   end
end

-------------------------------------------------------------------------
--DCLink extension
-------------------------------------------------------------------------

function DCLink.joint_reserve(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("rgdsec");
   else
       error("Model not supported");
   end
end

function DCLink.flow(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("dclink");
   else
       error("Model not supported");
   end
end

function DCLink.capacity_from_to(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("capdcl1");
   else
       error("Model not supported");
   end
end

function DCLink.marginal_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("cmglnk");
   else
       error("Model not supported");
   end
end

function DCLink.losses(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("loslnk");
   else
       error("Model not supported");
   end
end

function DCLink.loading_factor(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("usedcl");
   else
       error("Model not supported");
   end
end

function DCLink.capacity_to_from(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("capdcl2");
   else
       error("Model not supported");
   end
end

function DCLink.quadratic_losses(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("qdrlssdl");
   else
       error("Model not supported");
   end
end

function DCLink.losses_mismatch(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("lsserdcl");
   else
       error("Model not supported");
   end
end

function DCLink.available_cap_from_to(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("acapdcl1");
   else
       error("Model not supported");
   end
end

function DCLink.available_cap_to_from(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("acapdcl2");
   else
       error("Model not supported");
   end
end

function DCLink.transmission_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("dclcost");
   else
       error("Model not supported");
   end
end

-------------------------------------------------------------------------
--ReserveGenerationConstraint extension
-------------------------------------------------------------------------

function ReserveGenerationConstraint.requirement(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("rgermn");
   else
       error("Model not supported");
   end
end

function ReserveGenerationConstraint.value(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("resger");
   else
       error("Model not supported");
   end
end

function ReserveGenerationConstraint.marginal_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("cmgrge");
   else
       error("Model not supported");
   end
end

function ReserveGenerationConstraint.violation(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("vreseg");
   else
       error("Model not supported");
   end
end

function ReserveGenerationConstraint.violation_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("penres");
   else
       error("Model not supported");
   end
end

-------------------------------------------------------------------------
--CircuitsSum extension
-------------------------------------------------------------------------

function CircuitsSum.maximun(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("lscsup");
   else
       error("Model not supported");
   end
end

function CircuitsSum.minimun(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("lscinf");
   else
       error("Model not supported");
   end
end

function CircuitsSum.value(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("sumcir");
   else
       error("Model not supported");
   end
end

function CircuitsSum.marginal_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("cmgsuc");
   else
       error("Model not supported");
   end
end

function CircuitsSum.flow_losses(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("sumcil");
   else
       error("Model not supported");
   end
end

-------------------------------------------------------------------------
--InterconnectionSum extension
-------------------------------------------------------------------------

function InterconnectionSum.upper_bound(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("lsisup");
   else
       error("Model not supported");
   end
end

function InterconnectionSum.lower_bound(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("lsiinf");
   else
       error("Model not supported");
   end
end

function InterconnectionSum.sum(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("sumint");
   else
       error("Model not supported");
   end
end

function InterconnectionSum.sum_marg_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("cmgsui");
   else
       error("Model not supported");
   end
end

-------------------------------------------------------------------------
--GasNode extension
-------------------------------------------------------------------------

function GasNode.max_gas_production(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("maxgpr");
   else
       error("Model not supported");
   end
end

function GasNode.min_gas_production(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("mingpr");
   else
       error("Model not supported");
   end
end

function GasNode.gas_production(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("gasprd");
   else
       error("Model not supported");
   end
end

function GasNode.gas_production_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("gascst");
   else
       error("Model not supported");
   end
end

function GasNode.gas_marg_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("cmggas");
   else
       error("Model not supported");
   end
end

function GasNode.gas_prod_marg_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("cmgprg");
   else
       error("Model not supported");
   end
end

-------------------------------------------------------------------------
--Renewable extension
-------------------------------------------------------------------------

function Renewable.generation(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("gergnd");
   else
       error("Model not supported");
   end
end

function Renewable.bus_income(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("ggcmgb");
   else
       error("Model not supported");
   end
end

function Renewable.capacity_marg_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("cmgrnw");
   else
       error("Model not supported");
   end
end

function Renewable.nominal_capacity(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("pnomnd");
   else
       error("Model not supported");
   end
end

function Renewable.system_income(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("ggcmgs");
   else
       error("Model not supported");
   end
end

function Renewable.curtailment(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("vergnd");
   else
       error("Model not supported");
   end
end

function Renewable.scenario(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("renwscen");
   else
       error("Model not supported");
   end
end

function Renewable.dispatch_factor(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("usernw");
   else
       error("Model not supported");
   end
end

function Renewable.om_unitary_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("oemgnd");
   else
       error("Model not supported");
   end
end

function Renewable.available_capacity(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("potgnd");
   else
       error("Model not supported");
   end
end

function Renewable.joint_reserve(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("rgrsec");
   else
       error("Model not supported");
   end
end

function Renewable.joint_reserve_nexc(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("rsrnexc");
   else
       error("Model not supported");
   end
end

function Renewable.joint_reserve_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("srsvcr");
   else
       error("Model not supported");
   end
end

function Renewable.max_joint_reserve(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("renmxreser");
   else
       error("Model not supported");
   end
end

function Renewable.joint_reserve_price(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("renbdprc");
   else
       error("Model not supported");
   end
end

function Renewable.non_reserved_curtailment(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("rnwuspil");
   else
       error("Model not supported");
   end
end

-------------------------------------------------------------------------
--ReservoirSet extension
-------------------------------------------------------------------------

function ReservoirSet.security_energy_violation(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("vsecset");
   else
       error("Model not supported");
   end
end

function ReservoirSet.alert_energy_violation(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("valeset");
   else
       error("Model not supported");
   end
end

function ReservoirSet.flood_control_energy_violation(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("vespset");
   else
       error("Model not supported");
   end
end

function ReservoirSet.stored_energy(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("eneset");
   else
       error("Model not supported");
   end
end

function ReservoirSet.security_energy_violation_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("pnsecset");
   else
       error("Model not supported");
   end
end

function ReservoirSet.alert_energy_violation_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("pnaleset");
   else
       error("Model not supported");
   end
end

function ReservoirSet.flood_control_energy_violation_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("pnespset");
   else
       error("Model not supported");
   end
end

function ReservoirSet.energy_perc(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("enesetp");
   else
       error("Model not supported");
   end
end

-------------------------------------------------------------------------
--FuelContract extension
-------------------------------------------------------------------------

function FuelContract.daily_offtake_violation(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("fcofdvio");
   else
       error("Model not supported");
   end
end

function FuelContract.daily_offtake_violation_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("fcofdpen");
   else
       error("Model not supported");
   end
end

function FuelContract.capacity(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("fcvmax");
   else
       error("Model not supported");
   end
end

function FuelContract.max_offtake(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("fcwmax");
   else
       error("Model not supported");
   end
end

function FuelContract.remaining(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("fcvfin");
   else
       error("Model not supported");
   end
end

function FuelContract.unconsumed(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("fcncon");
   else
       error("Model not supported");
   end
end

function FuelContract.consumed(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("fconsp");
   else
       error("Model not supported");
   end
end

function FuelContract.marginal_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("fccmgvad");
   else
       error("Model not supported");
   end
end

function FuelContract.top_amount(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("fcvmaxtp");
   else
       error("Model not supported");
   end
end

function FuelContract.top_remaining(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("fcvfintp");
   else
       error("Model not supported");
   end
end

function FuelContract.top_unconsumed(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("fcncontp");
   else
       error("Model not supported");
   end
end

function FuelContract.top_marginal_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("fccmgvtp");
   else
       error("Model not supported");
   end
end

function FuelContract.top_consumed(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("fconsptp");
   else
       error("Model not supported");
   end
end

function FuelContract.top_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("fccosttp");
   else
       error("Model not supported");
   end
end

function FuelContract.top_add_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("fccostad");
   else
       error("Model not supported");
   end
end

function FuelContract.top_add_total(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("fcvmaxad");
   else
       error("Model not supported");
   end
end

function FuelContract.top_add_amount(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("fcvfinad");
   else
       error("Model not supported");
   end
end

function FuelContract.top_add_consumed(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("fconspad");
   else
       error("Model not supported");
   end
end

function FuelContract.top_add_unconsumed(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("fcnconad");
   else
       error("Model not supported");
   end
end

function FuelContract.makeup_final(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("fcvfinmu");
   else
       error("Model not supported");
   end
end

function FuelContract.makeup_discount(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("fcnconmu");
   else
       error("Model not supported");
   end
end

function FuelContract.makeup_withdrawal(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("fconspmu");
   else
       error("Model not supported");
   end
end

function FuelContract.carry_forward_cons(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("fconspcf");
   else
       error("Model not supported");
   end
end

function FuelContract.carry_forward_amount(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("favailcf");
   else
       error("Model not supported");
   end
end

function FuelContract.carry_forward_credit(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("fdebtcf");
   else
       error("Model not supported");
   end
end

function FuelContract.carry_forward_witdh(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("fctpcf");
   else
       error("Model not supported");
   end
end

function FuelContract.current_renewal(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("fcrenw");
   else
       error("Model not supported");
   end
end

function FuelContract.makeup_contrib(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("fcredmu");
   else
       error("Model not supported");
   end
end

function FuelContract.availability(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("fcavail");
   else
       error("Model not supported");
   end
end

function FuelContract.carry_forward_discount(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("fcnconcf");
   else
       error("Model not supported");
   end
end

function FuelContract.top_billing(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("fcfattp");
   else
       error("Model not supported");
   end
end

function FuelContract.consumption_billing(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("fcfatcns");
   else
       error("Model not supported");
   end
end

function FuelContract.min_offtake_violation(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("fcoffvio");
   else
       error("Model not supported");
   end
end

function FuelContract.min_offtake_violation_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("fcoffpen");
   else
       error("Model not supported");
   end
end

-------------------------------------------------------------------------
--ExpansionProject extension
-------------------------------------------------------------------------

function ExpansionProject.invest_capacity(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("invdec");
   else
       error("Model not supported");
   end
end

function ExpansionProject.investment_decision(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("optgxp");
   else
       error("Model not supported");
   end
end

-------------------------------------------------------------------------
--Load extension
-------------------------------------------------------------------------

function Load.supplied(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("demxclel");
   else
       error("Model not supported");
   end
end

function Load.inelastic(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("demxcl");
   else
       error("Model not supported");
   end
end

function Load.maximum(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("demxclmx");
   else
       error("Model not supported");
   end
end

function Load.revenue(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("demxclbn");
   else
       error("Model not supported");
   end
end

function Load.elastic_load_level_price(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("ldeprc");
   else
       error("Model not supported");
   end
end

-------------------------------------------------------------------------
--FuelReservoir extension
-------------------------------------------------------------------------

function FuelReservoir.max_withdrawal(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("frofmx");
   else
       error("Model not supported");
   end
end

function FuelReservoir.final_storage(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("frvfin");
   else
       error("Model not supported");
   end
end

function FuelReservoir.injection(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("frintk");
   else
       error("Model not supported");
   end
end

function FuelReservoir.withdrawal(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("frofft");
   else
       error("Model not supported");
   end
end

function FuelReservoir.marginal_value(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("frmgvf");
   else
       error("Model not supported");
   end
end

function FuelReservoir.capacity_marg_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("frmgcp");
   else
       error("Model not supported");
   end
end

-------------------------------------------------------------------------
--PhaseShifter extension
-------------------------------------------------------------------------

function PhaseShifter.angle(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("phshif");
   else
       error("Model not supported");
   end
end

-------------------------------------------------------------------------
--Study extension
-------------------------------------------------------------------------

function Study.hour_block_mapping(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("hblock");
   else
       error("Model not supported");
   end
end

function Study.future_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("objfct");
   else
       error("Model not supported");
   end
end

function Study.objective_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("objcop");
   else
       error("Model not supported");
   end
end

function Study.hourly_solution_stats(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("hrstat");
   else
       error("Model not supported");
   end
end

-------------------------------------------------------------------------
--FlowController extension
-------------------------------------------------------------------------

function FlowController.reactance(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("fctreact");
   else
       error("Model not supported");
   end
end

-------------------------------------------------------------------------
--SeriesCapacitor extension
-------------------------------------------------------------------------

function SeriesCapacitor.flow(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("seriescapacitor_flow");
   else
       error("Model not supported");
   end
end

function SeriesCapacitor.capacity_marg_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("seriescapacitor_capacity_marg_cost");
   else
       error("Model not supported");
   end
end

function SeriesCapacitor.losses(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("seriescapacitor_losses");
   else
       error("Model not supported");
   end
end

function SeriesCapacitor.quadratic_losses(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("seriescapacitor_quadratic_losses");
   else
       error("Model not supported");
   end
end

function SeriesCapacitor.losses_mismatch(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("seriescapacitor_losses_mismatch");
   else
       error("Model not supported");
   end
end

-------------------------------------------------------------------------
--Transformer extension
-------------------------------------------------------------------------

function Transformer.flow(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("transformer_flow");
   else
       error("Model not supported");
   end
end

function Transformer.capacity_marg_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("transformer_capacity_marg_cost");
   else
       error("Model not supported");
   end
end

function Transformer.losses(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("transformer_losses");
   else
       error("Model not supported");
   end
end

function Transformer.quadratic_losses(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("transformer_quadraticlosses");
   else
       error("Model not supported");
   end
end

function Transformer.losses_mismatch(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("transformer_losses_mismatch");
   else
       error("Model not supported");
   end
end

-------------------------------------------------------------------------
--ThreeWindingTransformer extension
-------------------------------------------------------------------------

function ThreeWindingTransformer.flow(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("threewindingtransformer_flow");
   else
       error("Model not supported");
   end
end

function ThreeWindingTransformer.capacity_marg_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("threewindingtransformer_capacity_marg_cost");
   else
       error("Model not supported");
   end
end

function ThreeWindingTransformer.losses(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("threewindingtransformer_losses");
   else
       error("Model not supported");
   end
end

function ThreeWindingTransformer.quadratic_losses(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("threewindingtransformer_quadratic_losses");
   else
       error("Model not supported");
   end
end

function ThreeWindingTransformer.losses_mismatch(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("threewindingtransformer_losses_mismatch");
   else
       error("Model not supported");
   end
end

-------------------------------------------------------------------------
--GenericConstraint extension
-------------------------------------------------------------------------

function GenericConstraint.marginal_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("gncmgc");
   else
       error("Model not supported");
   end
end

function GenericConstraint.violation(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("gncvio");
   else
       error("Model not supported");
   end
end

function GenericConstraint.violation_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("gncvic");
   else
       error("Model not supported");
   end
end

-------------------------------------------------------------------------
--GasEmission extension
-------------------------------------------------------------------------

function GasEmission.budget_marg_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("cmgemi");
   else
       error("Model not supported");
   end
end

function GasEmission.budget(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("rememi");
   else
       error("Model not supported");
   end
end

function GasEmission.budget_violation(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("vioemiq");
   else
       error("Model not supported");
   end
end

function GasEmission.total(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("gasemi");
   else
       error("Model not supported");
   end
end

-------------------------------------------------------------------------
--HydroGenerator extension
-------------------------------------------------------------------------

function HydroGenerator.unit_generation(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("gerhidun");
   else
       error("Model not supported");
   end
end

function HydroGenerator.turbining_violation(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("tuvio");
   else
       error("Model not supported");
   end
end

function HydroGenerator.turbining_violation_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("tucosvio");
   else
       error("Model not supported");
   end
end

-------------------------------------------------------------------------
--FlexibleDemand extension
-------------------------------------------------------------------------

function FlexibleDemand.supplied(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("lshsup");
   else
       error("Model not supported");
   end
end

function FlexibleDemand.curtailment(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("lshcurt");
   else
       error("Model not supported");
   end
end

function FlexibleDemand.maximum(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("lshmax");
   else
       error("Model not supported");
   end
end

function FlexibleDemand.minimum(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("lshmin");
   else
       error("Model not supported");
   end
end

function FlexibleDemand.energy(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("lshref");
   else
       error("Model not supported");
   end
end

function FlexibleDemand.curtailment_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("lshccst");
   else
       error("Model not supported");
   end
end

-------------------------------------------------------------------------
--GenericConstraintInterpolation extension
-------------------------------------------------------------------------

function GenericConstraintInterpolation.marginal_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("gncimgc");
   else
       error("Model not supported");
   end
end

function GenericConstraintInterpolation.violation(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("gncivio");
   else
       error("Model not supported");
   end
end

function GenericConstraintInterpolation.violation_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("gncivic");
   else
       error("Model not supported");
   end
end

-------------------------------------------------------------------------
--GenericVariable extension
-------------------------------------------------------------------------

function GenericVariable.value(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("valvgen");
   else
       error("Model not supported");
   end
end

function GenericVariable.cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("costvgen");
   else
       error("Model not supported");
   end
end

-------------------------------------------------------------------------
--DCLine extension
-------------------------------------------------------------------------

function DCLine.max_flow(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("maxflwdc");
   else
       error("Model not supported");
   end
end

function DCLine.circuit_flag(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("mntcirdc");
   else
       error("Model not supported");
   end
end

function DCLine.flow(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("cirflwdc");
   else
       error("Model not supported");
   end
end

function DCLine.marginal_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("cmgcirdc");
   else
       error("Model not supported");
   end
end

function DCLine.losses(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("lossesdc");
   else
       error("Model not supported");
   end
end

function DCLine.quadratic_losses(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("qdrlssdc");
   else
       error("Model not supported");
   end
end

function DCLine.loading(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("usecirdc");
   else
       error("Model not supported");
   end
end

function DCLine.losses_mismatch(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("lsserdc");
   else
       error("Model not supported");
   end
end

-------------------------------------------------------------------------
--ThermalGenerator extension
-------------------------------------------------------------------------

function ThermalGenerator.generation(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("gerterun");
   else
       error("Model not supported");
   end
end

function ThermalGenerator.commitment(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("thucommit");
   else
       error("Model not supported");
   end
end

function ThermalGenerator.min_gen_violation(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("terunmin");
   else
       error("Model not supported");
   end
end

-------------------------------------------------------------------------
--EnergyChainDemand extension
-------------------------------------------------------------------------

function EnergyChainDemand.demand_supplied(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("edemmet");
   else
       error("Model not supported");
   end
end

function EnergyChainDemand.demand_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("edemrev");
   else
       error("Model not supported");
   end
end

function EnergyChainDemand.marginal_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("edemcmc");
   else
       error("Model not supported");
   end
end

function EnergyChainDemand.deficit(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("edemdef");
   else
       error("Model not supported");
   end
end

-------------------------------------------------------------------------
--EnergyChainTransport extension
-------------------------------------------------------------------------

function EnergyChainTransport.transport_flow(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("etranflw");
   else
       error("Model not supported");
   end
end

function EnergyChainTransport.transport_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("etrancos");
   else
       error("Model not supported");
   end
end

function EnergyChainTransport.transport_marg_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("etrancmc");
   else
       error("Model not supported");
   end
end

-------------------------------------------------------------------------
--EnergyChainStorage extension
-------------------------------------------------------------------------

function EnergyChainStorage.final_storage(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("estbal");
   else
       error("Model not supported");
   end
end

function EnergyChainStorage.final_storage_marg_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("estbcmc");
   else
       error("Model not supported");
   end
end

function EnergyChainStorage.storage_injection(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("estinj");
   else
       error("Model not supported");
   end
end

function EnergyChainStorage.storage_injection_marg_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("estinjmc");
   else
       error("Model not supported");
   end
end

-------------------------------------------------------------------------
--RenewableGenerator extension
-------------------------------------------------------------------------

function RenewableGenerator.generation(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("gerrenun");
   else
       error("Model not supported");
   end
end

-------------------------------------------------------------------------
--WaterWay extension
-------------------------------------------------------------------------

function WaterWay.flow(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("wwflow");
   else
       error("Model not supported");
   end
end

function WaterWay.min_flow_violation(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("vflmnww");
   else
       error("Model not supported");
   end
end

function WaterWay.max_flow_violation(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("vflmxww");
   else
       error("Model not supported");
   end
end

function WaterWay.min_flow_violation_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("cvflmnww");
   else
       error("Model not supported");
   end
end

function WaterWay.max_flow_violation_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("cvflmxww");
   else
       error("Model not supported");
   end
end

function WaterWay.marginal_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("wwcmg");
   else
       error("Model not supported");
   end
end

-------------------------------------------------------------------------
--EnergyChainProducer extension
-------------------------------------------------------------------------

function EnergyChainProducer.producer_gen(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("epdger");
   else
       error("Model not supported");
   end
end

function EnergyChainProducer.producer_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("epdcos");
   else
       error("Model not supported");
   end
end

function EnergyChainProducer.producer_marg_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("epdcmc");
   else
       error("Model not supported");
   end
end

-------------------------------------------------------------------------
--EnergyChainFixedConverter extension
-------------------------------------------------------------------------

function EnergyChainFixedConverter.cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("fxccos");
   else
       error("Model not supported");
   end
end

function EnergyChainFixedConverter.capacity_marg_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("fxccmc");
   else
       error("Model not supported");
   end
end

-------------------------------------------------------------------------
--EnergyChainNode extension
-------------------------------------------------------------------------

function EnergyChainNode.node_marg_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("endcmg");
   else
       error("Model not supported");
   end
end

-------------------------------------------------------------------------
--ACLine extension
-------------------------------------------------------------------------

function ACLine.flow(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("acline_flow");
   else
       error("Model not supported");
   end
end

function ACLine.capacity_marg_cost(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("acline_capacity_marg_cost");
   else
       error("Model not supported");
   end
end

function ACLine.losses(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("acline_losses");
   else
       error("Model not supported");
   end
end

function ACLine.quadratic_losses(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("acline_quadratic_losses");
   else
       error("Model not supported");
   end
end

function ACLine.losses_mismatch(self, model)
   local model = "SDDP" or model;
   if model == "SDDP" then
      return self:load_sddp("acline_losses_mismatch");
   else
       error("Model not supported");
   end
end

