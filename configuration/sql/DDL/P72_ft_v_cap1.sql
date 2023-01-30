create or replace view ft_v_cap1
(
	issact_id, 
	instr_id, 
	approval_stat_typ
)
as
	select  issact_id,
			instr_id,
			case when cnt =0 then 'Approved'
			else 'Pending'
			end approval_stat_typ
	from (select IADC.issact_id,
				 IADC.instr_id,
				 (select count(1)
				  from FT_T_CHAL CHAL
				  where cross_ref_id = iadc.instr_id
				  and row_occur_id in ('ISID_PRIMARY_RIC', 'ISID_PRIMARY_BBTRDGSYMB')
				  and approval_stat_typ = 'PENDING'
				  and DATE(IADC.eff_tms) = DATE (chal.START_TMS)) cnt
				  from FT_T_IADC IADC 
				  where issact_typ = 'CHAN'
		   )c;