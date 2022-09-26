local function vere15()
    -- Loading collections
    sys = System();
    demand = Generic();
    
    -- Tolerance
    tol = 0.015 -- %
    
    -- Load deficit file system
    deficit       = sys:load("defcit");
    supplied_load = demand:load("demandel");
    
    -- Aggregating block data
    agg_stg_supplied_load = supplied_load:aggregate_blocks(BY_SUM());
    agg_stg_defcit = deficit:aggregate_blocks(BY_SUM());
    
    -- Count scenarios that have deficit above tol%
    agg_stg_pcent_defcit = ifelse(agg_stg_supplied_load:ne(0.0),agg_stg_defcit/agg_stg_supplied_load,0.0);
    abv_tol_pcent_defcit_bin = ifelse(agg_stg_pcent_defcit:gt(tol),1,0);
    agg_stg_pcent_defcit = agg_stg_pcent_defcit*abv_tol_pcent_defcit_bin
    
    -- Calculate vere15[%]
    agg_abv_tol_defcit_count = abv_tol_pcent_defcit_bin:aggregate_scenarios(BY_SUM());
    output = ifelse(agg_abv_tol_defcit_count:ne(0.0),agg_stg_pcent_defcit:aggregate_scenarios(BY_SUM())/agg_abv_tol_defcit_count,0.0):convert("%");
    
    return output
end
return vere15