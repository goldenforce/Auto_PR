

INSERT INTO ft_t_idmv (intrnl_dmn_val_id, fld_data_cl_id, fld_id, last_chg_tms, last_chg_usr_id, mod_rst_ind, intrnl_dmn_val_txt, intrnl_dmn_val_nme, intrnl_dmn_desc, data_stat_typ, data_src_id,tbl_id,col_nme)SELECT 'BARRAID',NULL,'00002875',SYSDATE(),'GS:PSG:P72','N','BARRA','Barra Id','Barra Id','ACTIVE','P72',NULL, NULL     FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_idmv WHERE fld_id = '00002875' AND intrnl_dmn_val_txt = 'BARRA');

INSERT INTO ft_t_idmv (intrnl_dmn_val_id, fld_data_cl_id, fld_id, last_chg_tms, last_chg_usr_id, mod_rst_ind, intrnl_dmn_val_txt, intrnl_dmn_val_nme, intrnl_dmn_desc, data_stat_typ, data_src_id,tbl_id,col_nme)  SELECT 'BARRA00001',NULL,'00173405',SYSDATE(),'GS:PSG:P72','N','BARRA','BARRA','BARRA','ACTIVE','P72',NULL, NULL    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_idmv WHERE fld_id = '00173405' AND intrnl_dmn_val_txt = 'BARRA');

