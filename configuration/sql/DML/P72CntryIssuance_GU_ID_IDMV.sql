

INSERT INTO ft_t_idmv (intrnl_dmn_val_id,fld_data_cl_id,fld_id,appl_id,last_chg_tms,last_chg_usr_id,mod_rst_ind,intrnl_dmn_val_nme,intrnl_dmn_val_txt,intrnl_dmn_desc,tbl_id,col_nme,ds_id,qual_fld_id,qual_val_txt,dmn_set_id,meta_src_id,data_stat_typ,org_id,dmn_val_purp_typ,data_src_id)
	 SELECT 'BBERG01',NULL,'00173405',NULL,sysdate(),'GS:PSG:P72','N','BB','BB','BB Country of Issuance',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ACTIVE',NULL,NULL,'P72' from DUAL where not exists (select 'X' from ft_t_idmv where  fld_id='00173405' and intrnl_dmn_val_id='BBERG01');
	 
	 