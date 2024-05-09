function Study.get_description(self)
    return self:get_parameter("Descricao", "");
end

function Study.get_language(self)
    return self:get_parameter("Idioma", -1);
end

function Study.get_objective_function_type(self)
    return self:get_parameter("Objetivo", -1);
end

function Study.get_options(self)
    return self:get_parameter("Opcao", -1);
end

function Study.get_stage_type(self)
    return self:get_parameter("Tipo_Etapa", -1);
end

function Study.get_inflows_type(self)
    return self:get_parameter("Vazoes", -1);
end

function Study.get_maintenance_type(self)
    return self:get_parameter("Manutencao", -1);
end

function Study.get_configuration_type(self)
    return self:get_parameter("Configuracao", -1);
end

function Study.get_network(self)
    return self:get_parameter("Rede", -1);
end

function Study.get_losses(self)
    return self:get_parameter("Perdas", -1);
end

function Study.get_horizon(self)
    return self:get_parameter("Horizonte", -1);
end

function Study.get_series_to_simulate(self)
    return self:get_parameter("Series_Simular", -1);
end

function Study.get_initial_stage(self)
    return self:get_parameter("Etapa_inicial", -1);
end

function Study.get_initial_year(self)
    return self:get_parameter("Ano_inicial", -1);
end

function Study.get_final_stage(self)
    return self:get_parameter("Etapa_final", -1);
end

function Study.get_final_year(self)
    return self:get_parameter("Ano_final", -1);
end

function Study.get_number_of_stages(self)
    return self:get_parameter("NumeroEtapas", -1);
end

function Study.get_initial_hydro_month(self)
    return self:get_parameter("Mes_Inicial_Hidro", -1);
end

function Study.get_initial_hydro_year(self)
    return self:get_parameter("Ano_Inicial_Hidro", -1);
end

function Study.get_number_of_systems(self)
    return self:get_parameter("NumeroSistemas", -1);
end

function Study.get_series_forward(self)
    return self:get_parameter("Series_Forward", -1);
end

function Study.get_series_backward(self)
    return self:get_parameter("Series_Backward", -1);
end

function Study.get_number_of_demand_blocks(self)
    return self:get_parameter("NumeroBlocosDemanda", -1);
end

function Study.get_number_of_demand_blocks_parm2(self)
    return self:get_parameter("NumeroBlocosDemandaParm2", -1);
end

function Study.get_number_of_additional_years(self)
    return self:get_parameter("NumeroAnosAdicionais", -1);
end

function Study.get_number_of_additional_years_parm2(self)
    return self:get_parameter("NumeroAnosAdicionaisParm2", -1);
end

function Study.get_number_of_additional_years_parm3(self)
    return self:get_parameter("NumeroAnosAdicionaisParm3", -1);
end

function Study.get_max_iterations(self)
    return self:get_parameter("MaximoIteracoes", -1);
end

function Study.get_convergence_criteria(self)
    return self:get_parameter("CriterioConvergencia", -1);
end

function Study.get_reporting_level(self)
    return self:get_parameter("NivelInformes", -1);
end

function Study.get_discount_rate(self)
    return self:get_parameter("TaxaDesconto", -1);
end

function Study.get_min_outflow_penalty(self)
    return self:get_parameter("MinOutflowPenalty", -1);
end

function Study.get_spillage_penalty(self)
    return self:get_parameter("SpillagePenalty", -1);
end

function Study.get_version_load_bar_info(self)
    return self:get_parameter("VersaoInfoCargaBarra", -1);
end

function Study.get_version_renewable_block_profile(self)
    return self:get_parameter("VersionRenewableBlockProfile", "");
end

function Study.get_number_of_simulations(self)
    return self:get_parameter("NumberSimulations", -1);
end

function Study.get_number_of_openings(self)
    return self:get_parameter("NumberOpenings", -1);
end

function Study.get_number_of_blocks(self)
    return self:get_parameter("NumberBlocks", -1);
end

function Study.get_currency_reference(self)
    return self:get_parameter("CurrencyReference", "");
end

function Study.get_flag_create_future_cost(self)
    return self:get_parameter("FlagCreateFutureCost", -1);
end

function Study.get_future_cost_stage(self)
    return self:get_parameter("FutureCostStage", -1);
end

function Study.get_future_cost_year(self)
    return self:get_parameter("FutureCostYear", -1);
end

function Study.get_future_cost_entry_file_name(self)
    return self:get_parameter("FutureCostEntryFileName", "");
end

function Study.get_flag_read_future_cost(self)
    return self:get_parameter("FlagReadFutureCost", -1);
end

function Study.get_future_cost_read_file_name(self)
    return self:get_parameter("FutureCostReadFileName", "");
end

function Study.get_flag_use_hot_start(self)
    return self:get_parameter("FlagUseHotStart", -1);
end

function Study.get_initial_stage_future_cost(self)
    return self:get_parameter("InitialStageFutureCost", -1);
end

function Study.get_final_stage_future_cost(self)
    return self:get_parameter("FinalStageFutureCost", -1);
end

function Study.get_flag_reduced_uncertainty(self)
    return self:get_parameter("FlagReducedUncertainty", "");
end

function Study.get_min_spillage_unit(self)
    return self:get_parameter("MinSpillageUnit", "");
end

function Study.get_sub_hourly_discretization(self)
    return self:get_parameter("SubHourlyDiscretization", "");
end
