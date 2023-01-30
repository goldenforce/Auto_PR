--Values for BDCH.BOND_SNRTY_TYP
INSERT INTO ft_t_idmv
(intrnl_dmn_val_id, fld_data_cl_id, fld_id, appl_id, last_chg_tms, last_chg_usr_id, mod_rst_ind, intrnl_dmn_val_nme, intrnl_dmn_val_txt, intrnl_dmn_desc, tbl_id, col_nme, ds_id, qual_fld_id, qual_val_txt, dmn_set_id, meta_src_id, data_stat_typ, org_id, dmn_val_purp_typ, data_src_id)
select new_oid (), NULL, '01841210', NULL, current_timestamp, 'GS:PSG:P72', 'N', 'Not Applicable', '0', 'Not Applicable', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ACTIVE', NULL, NULL, 'BB'
where not exists (select '1' from ft_t_idmv where fld_id = '01841210' and intrnl_dmn_val_txt = '0');

INSERT INTO ft_t_idmv
(intrnl_dmn_val_id, fld_data_cl_id, fld_id, appl_id, last_chg_tms, last_chg_usr_id, mod_rst_ind, intrnl_dmn_val_nme, intrnl_dmn_val_txt, intrnl_dmn_desc, tbl_id, col_nme, ds_id, qual_fld_id, qual_val_txt, dmn_set_id, meta_src_id, data_stat_typ, org_id, dmn_val_purp_typ, data_src_id)
select new_oid (), NULL, '01841210', NULL, current_timestamp, 'GS:PSG:P72', 'N', 'Senior', '1', 'Senior', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ACTIVE', NULL, NULL, 'BB'
where not exists (select '1' from ft_t_idmv where fld_id = '01841210' and intrnl_dmn_val_txt = '1');

INSERT INTO ft_t_idmv
(intrnl_dmn_val_id, fld_data_cl_id, fld_id, appl_id, last_chg_tms, last_chg_usr_id, mod_rst_ind, intrnl_dmn_val_nme, intrnl_dmn_val_txt, intrnl_dmn_desc, tbl_id, col_nme, ds_id, qual_fld_id, qual_val_txt, dmn_set_id, meta_src_id, data_stat_typ, org_id, dmn_val_purp_typ, data_src_id)
select new_oid (), NULL, '01841210', NULL, current_timestamp, 'GS:PSG:P72', 'N', 'Subordinated', '2', 'Subordinated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ACTIVE', NULL, NULL, 'BB'
where not exists (select '1' from ft_t_idmv where fld_id = '01841210' and intrnl_dmn_val_txt = '2');

INSERT INTO ft_t_idmv
(intrnl_dmn_val_id, fld_data_cl_id, fld_id, appl_id, last_chg_tms, last_chg_usr_id, mod_rst_ind, intrnl_dmn_val_nme, intrnl_dmn_val_txt, intrnl_dmn_desc, tbl_id, col_nme, ds_id, qual_fld_id, qual_val_txt, dmn_set_id, meta_src_id, data_stat_typ, org_id, dmn_val_purp_typ, data_src_id)
select new_oid (), NULL, '01841210', NULL, current_timestamp, 'GS:PSG:P72', 'N', 'Other', '3', 'Other', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ACTIVE', NULL, NULL, 'BB'
where not exists (select '1' from ft_t_idmv where fld_id = '01841210' and intrnl_dmn_val_txt = '3');