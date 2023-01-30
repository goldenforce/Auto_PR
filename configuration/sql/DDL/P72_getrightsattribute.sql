CREATE OR REPLACE FUNCTION getrightsattribute(i_instrid character varying)
 RETURNS character
 LANGUAGE plpgsql
AS $function$
declare 
l_output 			CHARACTER(1000) ;
l_AJ_FACTOR_CRTE	VARCHAR(254):= NULL;
l_STAT_VAL_CAMT		VARCHAR(254):= NULL;
l_subs_prd_end_tms	VARCHAR(254):= NULL;
l_ev_part_camt		VARCHAR(254):= NULL;
begin
              select
                     IADC.AJ_FACTOR_CRTE  
              into l_AJ_FACTOR_CRTE       
              from
                     FT_T_RIDF RIDF ,
                     FT_T_RISS RISS ,
                     FT_T_IADC IADC
              where
                     RIDF.INSTR_ID = I_INSTRID
                     and RIDF.RLD_ISS_FEAT_ID = RISS.RLD_ISS_FEAT_ID
                     and RISS.INSTR_ID = IADC.INSTR_ID
                     and ISSACT_TYP in ('RHTS','RHDI')
                     and RIDF.END_TMS is null
                     and RISS.END_TMS is null
                    limit 1;
                   
              IF NOT FOUND THEN 
              	L_AJ_FACTOR_CRTE:='NA';
              END IF;
                   
              select
                     IASS.STAT_VAL_CAMT 
              into l_STAT_VAL_CAMT      
              from
                     FT_T_RIDF RIDF ,
                     FT_T_RISS RISS ,
                     FT_T_IADC IADC,
                     FT_T_IASS IASS
              where
                     RIDF.INSTR_ID = I_INSTRID
                     and RIDF.RLD_ISS_FEAT_ID = RISS.RLD_ISS_FEAT_ID
                     and RISS.INSTR_ID = IADC.INSTR_ID
                     and ISSACT_TYP in ('RHTS','RHDI')
                     and IADC.ISSACT_ID = IASS.ISSACT_ID
                     and IASS.STAT_DEF_ID = 'RHTRATIO'
                     and RIDF.END_TMS is null
                     and RISS.END_TMS is null
                    limit 1; 
             
              IF NOT FOUND THEN 
              	l_STAT_VAL_CAMT:='NA';
              END IF;
				

                   
                     select
					       ench.subs_prd_end_tms
					into
					       l_subs_prd_end_tms
					from
					       ft_t_ridf ridf,
					       ft_t_riss riss,
					       ft_t_iadc iadc,
					       ft_t_ench ench
					where
					       ridf.instr_id = i_instrid
					       and 
					       ridf.rld_iss_feat_id = riss.rld_iss_feat_id
					       and riss.instr_id = iadc.instr_id
					       and iadc.issact_typ in ('RHTS','RHDI')
					       and iadc.issact_id = ench.issact_id
					       and ridf.end_tms is null
					       and riss.end_tms is null
					       and iadc.end_tms is null
					       and ench.end_tms is null
					limit 1;
				
				IF NOT FOUND THEN 
              	l_subs_prd_end_tms:='NA';
              END IF;

		       select
		       		  iaip.ev_part_camt
				into
				       l_ev_part_camt
				from
				       ft_t_ridf ridf,
				       ft_t_riss riss,
				       ft_t_iadc iadc,
				       ft_t_iapr iapr,
				       ft_t_iaip iaip
				where
				       ridf.instr_id = i_instrid
				       and ridf.rld_iss_feat_id = riss.rld_iss_feat_id
				       and riss.instr_id = iadc.instr_id
				       and iadc.issact_typ in ('RHTS','RHDI')
				       and iadc.issact_id = iapr.issact_id
				       and iapr.issact_proc_id = iaip.issact_proc_id
				       and iaip.iss_part_rl_typ = 'DELIVER'
				       and iaip.issact_part_typ = 'CASH'
				       and iaip.ev_amt_bas_typ = 'SHARE'
				       and iaip.ev_amt_typ = 'AMOUNT'
				       and ridf.end_tms is null
				       and riss.end_tms is null
				       and iadc.end_tms is null
				       and iapr.end_tms is null
				       and iaip.end_tms is null
				limit 1;
			
			IF NOT FOUND THEN 
              	l_ev_part_camt:='NA';
              END IF;
             
           l_output:= L_AJ_FACTOR_CRTE || ',' || l_STAT_VAL_CAMT ||',' || l_subs_prd_end_tms || ',' || l_ev_part_camt;
			
return l_output;

end;
  $function$
;
