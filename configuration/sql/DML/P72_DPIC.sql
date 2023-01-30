delete from ft_t_dpic where issact_typ  = 'CHAN';


INSERT INTO ft_t_dpic (org_id,issact_typ,tbl_id,col_nme,crit_sq_num,start_tms,mtch_act_typ,nomtch_act_typ,last_chg_tms,last_chg_usr_id,crit_desc) 
select 	'ENT1','CHAN','IADC','EFF_TMS',1,sysdate(),'UPDATE','ADD',sysdate(),'GS:MBUS','EFF_TMS' from dual
where not exists (select 'X' from ft_t_dpic where org_id = 'ENT1' and issact_typ = 'CHAN' and col_nme = 'EFF_TMS' and crit_sq_num = 1);

INSERT INTO ft_t_dpic (org_id,issact_typ,tbl_id,col_nme,crit_sq_num,start_tms,mtch_act_typ,nomtch_act_typ,last_chg_tms,last_chg_usr_id,crit_desc) 
select 	'ENT1','CHAN','IADC','MKT_ISS_OID',2,sysdate(),'UPDATE','ADD',sysdate(),'GS:MBUS','MKT_ISS_OID' from dual
where not exists (select 'X' from ft_t_dpic where org_id = 'ENT1' and issact_typ = 'CHAN' and col_nme = 'MKT_ISS_OID' and crit_sq_num = 2);

INSERT INTO ft_t_dpic (org_id,issact_typ,tbl_id,col_nme,crit_sq_num,start_tms,mtch_act_typ,nomtch_act_typ,last_chg_tms,last_chg_usr_id,crit_desc) 
select 	'ENT1','CHAN','IADC','EIAT_OID',3,sysdate(),'UPDATE','ADD',sysdate(),'GS:MBUS','EIAT_OID' from dual
where not exists (select 'X' from ft_t_dpic where org_id = 'ENT1' and issact_typ = 'CHAN' and col_nme = 'EIAT_OID' and crit_sq_num = 3);


COMMIT;