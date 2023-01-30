
INSERT INTO ft_t_incl (clsf_oid, cl_value, indus_cl_set_id, level_num, start_tms, last_chg_tms, last_chg_usr_id, cl_nme, cl_desc,data_src_id) 
 SELECT 'GVASTTYP02','Bond','GVASTTYP',1,SYSDATE(),SYSDATE(),'GS:PSG:P72','Bond','Bond','BB'     FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_incl WHERE cl_value = 'Bond' AND indus_cl_set_id = 'GVASTTYP');


