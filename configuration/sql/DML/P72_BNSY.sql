INSERT INTO ft_t_bnsy (bnchmrk_sec_typ,org_id,start_tms,end_tms,indx_mltplr_crte,dec_prec_num,bnchmrk_sec_typ_nme,bnchmrk_sec_typ_desc,last_chg_tms,last_chg_usr_id,data_stat_typ,data_src_id)
select 'ETF',NULL,SYSDATE() ,NULL,0.000000000000,1,'ETF',NULL,SYSDATE(),'P72:CSTM',NULL,null from DUAL
where not exists (select 'X' from FT_T_BNSY where bnchmrk_sec_typ = 'ETF');