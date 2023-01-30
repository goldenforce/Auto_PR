INSERT INTO ft_t_isgr (iss_grp_oid,org_id,subdiv_id,iss_grp_id,last_chg_tms,last_chg_usr_id,grp_purp_typ,start_tms,end_tms,cross_ref_id,grp_nme,grp_desc,instr_id,data_stat_typ,data_src_id,subd_org_id,dwdf_oid,dim_set_txt,dim_header_txt,subd_oid,pped_oid,pcfd_oid) 
SELECT new_oid(),NULL,NULL,NULL,sysdate(),'SOI','UNIVERSE',sysdate(),NULL,NULL,'Fixed Income SOI','Fixed Income SOI',NULL,'ACTIVE','P72',NULL,NULL,NULL,NULL,NULL,NULL,NULL FROM DUAL 
WHERE NOT EXISTS (SELECT 'X' from ft_T_ISGR WHERE grp_purp_typ = 'UNIVERSE' and grp_nme = 'Fixed Income SOI');
