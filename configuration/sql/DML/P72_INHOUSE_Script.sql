do $$ 
<<first_block>>
declare
	i					record;
	v_count				numeric:=0;
	v_irid_oid			FT_T_IRID.IRID_OID%type;
	v_issr_id			FT_T_IRID.ISSR_ID%type;
begin
	for i in select * from ft_t_issr issr 
			 where end_tms  is null
			 and instr_issr_id  in (select instr_issr_id from ft_t_issu where iss_typ ='EQSHR')	
			 and not exists (select 1 from ft_t_irid irid 
			 where irid.issr_id_ctxt_typ ='INHOUSE' 
			 and irid.end_tms  is null
			 and irid.instr_issr_id =issr.instr_issr_id)
							
							
	loop			
		v_count:=v_count+1;
		
	
		select p72getcntrprimid_mkis(),new_oid()  into v_issr_id,v_irid_oid from dual;
	
		RAISE INFO 'v_irid_oid-->%',v_irid_oid;
		
		insert into ft_t_irid
		(irid_oid,
			instr_issr_id,
			issr_id_ctxt_typ,
			issr_id,
			start_tms,
			end_tms,
			last_chg_tms,
			last_chg_usr_id,
			data_src_id,
			global_uniq_ind)
			values
			(v_irid_oid,
			i.instr_issr_id,
			'INHOUSE',
			v_issr_id,
			sysdate(),
			null,
			sysdate(),
			'GS:PSG:P72',
			'BB',
			'N');
		
		
	end loop;
end first_block $$;

