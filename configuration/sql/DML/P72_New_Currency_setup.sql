---New Currency setup

do $$ 
<<first_block>>
declare
	i					record;
	v_instr_id			FT_T_ISSU.INSTR_ID%type;
	v_count				numeric;
	
begin
	for i in select Currency_code,Currency_Desp from (
							select 'DXY' Currency_code,'U.S. Dollar Index' Currency_Desp from dual
							union 
							select 'CNT' Currency_code,'Chinese yuan (offshore)' Currency_Desp from dual
							union
							select 'KID' Currency_code,'Kiribati dollar' Currency_Desp from dual
							union
							select 'NTD' Currency_code,'New Taiwan dollar' Currency_Desp from dual
							union
							select 'PRB' Currency_code,'Transnistrian ruble' Currency_Desp from dual
							union
							select 'SLS' Currency_code,'Somaliland shilling' Currency_Desp from dual
							union
							select 'RMB' Currency_code,'Chinese yuan' Currency_Desp from dual
							union
							select 'ZWB' Currency_code,'Zimbabwean bonds' Currency_Desp from dual
							)aa
							where not exists (select 1
							from ft_t_issu issu 
							where iss_typ ='CURRENCY'  
							and end_tms is null 
							and pref_id_ctxt_typ  ='ISO CURR' 
							and denom_curr_cde in ('DXY','CNT','PRB','KID','NTD','ZWB')
							)

							
							
	loop			
		
		select 'CRNCY-' || i.Currency_code ||'='  into v_instr_id from dual;
		
		RAISE INFO 'v_instr_id-->%',v_instr_id;
	
		insert into FT_T_ISSU 
		(instr_id,access_auth_typ,iss_actvy_stat_typ,denom_curr_cde,iss_typ,pref_id_ctxt_typ,start_tms,last_chg_tms,last_chg_usr_id,iss_alph_srch_txt,pref_iss_id,pref_iss_nme,data_src_id)
		values
		(v_instr_id,'PUBLIC','ACTIVE',i.Currency_code,'CURRENCY','ISO CURR',sysdate(),sysdate(),'GS:PSG:P72',i.Currency_code,i.Currency_code,i.Currency_Desp,'NON-ISO');
		
		insert into ft_t_cych
		(iso_curr_cde,instr_id,last_chg_tms,last_chg_usr_id,curr_nme,data_stat_typ,data_src_id,cych_oid,start_tms)
		values
		(i.Currency_code,v_instr_id,sysdate(),'GS:PSG:P72',i.Currency_Desp,'OBSOLETE','NON-ISO',v_instr_id,sysdate());
	
		
		insert into ft_t_isid 
		(isid_oid,instr_id,id_ctxt_typ,iss_id,start_tms,end_tms,last_chg_tms,last_chg_usr_id,data_src_id,global_uniq_ind)
		values
		(v_instr_id,v_instr_id,'ISO CURR',i.Currency_code,sysdate(),null,sysdate(),'GS:PSG:P72',null,'Y');
	
		insert into ft_t_isde
		(isde_oid,instr_id,nls_cde,desc_usage_typ,start_tms,last_chg_tms,last_chg_usr_id,iss_nme,data_src_id,isid_oid,desc_srce_typ)
		values
		(v_instr_id,v_instr_id,'ENGLISH','PRIMARY',sysdate(),sysdate(),'GS:PSG:P72',i.Currency_Desp,'ISO4217',v_instr_id,'ISO4217');
	
	end loop;
end first_block $$;



-----Currency------

do $$ 
<<first_block>>
declare
	i					record;
	v_mkt_oid			FT_T_MKIS.MKT_OID%type;
	v_count				numeric:=0;
	v_mkt_iss_oid		FT_T_MKIS.MKT_ISS_OID%type;
	v_iss_id			FT_T_ISID.ISS_ID%type;
begin
	for i in select *  from ft_t_issu issu where iss_typ ='CURRENCY'  
							and end_tms is null 
							and pref_id_ctxt_typ  ='ISO CURR' 
							and not exists  (select 1 from FT_T_MKIS mkis where mkis.instr_id =issu.instr_id )
							and not exists  (select 1 from ft_t_isid isid ,FT_T_MIXR mixr  where isid.instr_id =issu.instr_id and  isid.id_ctxt_typ='CNTRPRIMID' and isid.isid_oid =mixr.isid_oid )
							and denom_curr_cde in ('DXY','CNT','PRB','KID','NTD','ZWB','ZAr')
							
	loop			
		v_count:=v_count+1;
		v_mkt_oid:='*y8tE8ojG2';
		v_mkt_iss_oid:=new_oid();
	
		select p72getcntrprimid_mkis() into v_iss_id from dual;
		
		RAISE INFO 'v_mkt_iss_oid-->%',v_mkt_iss_oid;
		
		insert into FT_T_MKIS (mkt_iss_oid,
			mkt_oid,
			instr_id,
			last_chg_tms,
			last_chg_usr_id,
			trdng_stat_typ,
			trdng_curr_cde ,isid_oid,
			prim_trd_mkt_ind,
			start_tms,
			data_stat_typ,
			init_margin_camt,
			ofcl_place_listing_ind)
			values(v_mkt_iss_oid,
			v_mkt_oid,
			i.instr_id,
			sysdate(),
			'GS:PSG:P72',
			'ACTIVE',
			'XXX',
			null,
			'N',
			sysdate(),
			'ACTIVE',
			1,
			'Y');
		
		insert into ft_t_isid 
		(isid_oid,
			instr_id,
			id_ctxt_typ,
			iss_id,
			start_tms,
			end_tms,
			last_chg_tms,
			last_chg_usr_id,
			mkt_oid,
			global_uniq_ind)
		values
		(v_mkt_iss_oid,
		i.instr_id,
		'CNTRPRIMID',
		v_iss_id,
		sysdate(),
		null,
		sysdate(),
		'GS:PSG:P72',
		v_mkt_oid,
		'N');
	
	insert into FT_T_MIXR 
		 (mixr_oid,
			isid_oid,
			mkt_iss_oid,
			start_tms,
			end_tms,
			trdng_stat_typ,
			last_chg_tms,
			last_chg_usr_id,
			data_stat_typ,
			data_src_id)
		values 
		 (v_mkt_iss_oid,
		v_mkt_iss_oid,
		v_mkt_iss_oid,
		sysdate(),
		null,
		'ACTIVE',
		sysdate(),
		'GS:PSG:P72',
		'ACTIVE',
		null);
		
		insert into ft_t_must 
		(must_oid,mkt_iss_oid,stat_def_id,start_tms,last_chg_tms,last_chg_usr_id,stat_int_val_num)
		values
		(v_mkt_iss_oid,v_mkt_iss_oid,'LISTVERN',sysdate(),sysdate(),'GS:PSG:P72',2);
		

	end loop;
end first_block $$;