INSERT INTO ft_t_eiat (eiat_oid,iacd_oid,data_src_id,last_chg_tms,last_chg_usr_id,data_stat_typ,ext_issact_typ_txt,ext_issact_typ_nme,start_tms)
	select 'RFTDSP==01','CHAN======','RFTDSP',sysdate() ,'P72:CSTM','ACTIVE','CHG_RIC','Ticker Symbol Change',sysdate() 
	from DUAL where not exists 
(select 1 from ft_t_eiat where eiat_oid='RFTDSP==01' AND data_src_id ='RFTDSP' and ext_issact_typ_txt='CHG_RIC');