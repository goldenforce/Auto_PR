--IDMV for ID_CTXT_TYP for Request Reply

INSERT INTO ft_t_idmv (intrnl_dmn_val_id, fld_data_cl_id, fld_id, last_chg_tms, last_chg_usr_id, mod_rst_ind, intrnl_dmn_val_txt, intrnl_dmn_val_nme, intrnl_dmn_desc, data_src_id, tbl_id, col_nme, qual_val_txt, dmn_set_id, dmn_val_purp_typ, data_stat_typ)
  SELECT NEW_OID(), NULL, '00002875', SYSDATE(), 'GS:PSG:P72', 'N', 'BB_UNIQUE', 'BB Unique ID', NULL, 'GS', 'VRCD', 'ID_CTXT_TYP', NULL, NULL ,'MKTINTID', 'ACTIVE'
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_idmv WHERE fld_data_cl_id IS NULL AND fld_id = '00002875' AND tbl_id = 'VRCD' AND col_nme = 'ID_CTXT_TYP' AND dmn_set_id  IS NULL AND intrnl_dmn_val_txt = 'BB_UNIQUE');

INSERT INTO ft_t_idmv (intrnl_dmn_val_id, fld_data_cl_id, fld_id, last_chg_tms, last_chg_usr_id, mod_rst_ind, intrnl_dmn_val_txt, intrnl_dmn_val_nme, intrnl_dmn_desc, data_src_id, tbl_id, col_nme, qual_val_txt, dmn_set_id, dmn_val_purp_typ, data_stat_typ)
  SELECT NEW_OID(), NULL, '00002875', SYSDATE(), 'GS:PSG:P72', 'N', 'BB_GLOBAL', 'Bloomberg Global Identifier', NULL, 'GS', 'VRCD', 'ID_CTXT_TYP', NULL, NULL ,'MKTINTID', 'ACTIVE'
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_idmv WHERE fld_data_cl_id IS NULL AND fld_id = '00002875' AND tbl_id = 'VRCD' AND col_nme = 'ID_CTXT_TYP' AND dmn_set_id  IS NULL AND intrnl_dmn_val_txt = 'BB_GLOBAL');

INSERT INTO ft_t_idmv (intrnl_dmn_val_id, fld_data_cl_id, fld_id, last_chg_tms, last_chg_usr_id, mod_rst_ind, intrnl_dmn_val_txt, intrnl_dmn_val_nme, intrnl_dmn_desc, data_src_id, tbl_id, col_nme, qual_val_txt, dmn_set_id, dmn_val_purp_typ, data_stat_typ)
  SELECT NEW_OID(), NULL, '00002875', SYSDATE(), 'GS:PSG:P72', 'N', 'SEDOL', 'Sedol Number', NULL, 'GS', 'VRCD', 'ID_CTXT_TYP', NULL, NULL ,'MKTINTID', 'ACTIVE'
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_idmv WHERE fld_data_cl_id IS NULL AND fld_id = '00002875' AND tbl_id = 'VRCD' AND col_nme = 'ID_CTXT_TYP' AND dmn_set_id  IS NULL AND intrnl_dmn_val_txt = 'SEDOL');

INSERT INTO ft_t_idmv (intrnl_dmn_val_id, fld_data_cl_id, fld_id, last_chg_tms, last_chg_usr_id, mod_rst_ind, intrnl_dmn_val_txt, intrnl_dmn_val_nme, intrnl_dmn_desc, data_src_id, tbl_id, col_nme, qual_val_txt, dmn_set_id, dmn_val_purp_typ, data_stat_typ)
  SELECT NEW_OID(), NULL, '00002875', SYSDATE(), 'GS:PSG:P72', 'N', 'ISIN', 'ISIN ID Number', NULL, 'GS', 'VRCD', 'ID_CTXT_TYP', NULL, NULL ,'INTLVLID', 'ACTIVE'
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_idmv WHERE fld_data_cl_id IS NULL AND fld_id = '00002875' AND tbl_id = 'VRCD' AND col_nme = 'ID_CTXT_TYP' AND dmn_set_id  IS NULL AND intrnl_dmn_val_txt = 'ISIN');

INSERT INTO ft_t_idmv (intrnl_dmn_val_id, fld_data_cl_id, fld_id, last_chg_tms, last_chg_usr_id, mod_rst_ind, intrnl_dmn_val_txt, intrnl_dmn_val_nme, intrnl_dmn_desc, data_src_id, tbl_id, col_nme, qual_val_txt, dmn_set_id, dmn_val_purp_typ, data_stat_typ)
  SELECT NEW_OID(), NULL, '00002875', SYSDATE(), 'GS:PSG:P72', 'N', 'CUSIP', 'CUSIP Number', NULL, 'GS', 'VRCD', 'ID_CTXT_TYP', NULL, NULL ,'INTLVLID', 'ACTIVE'
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_idmv WHERE fld_data_cl_id IS NULL AND fld_id = '00002875' AND tbl_id = 'VRCD' AND col_nme = 'ID_CTXT_TYP' AND dmn_set_id  IS NULL AND intrnl_dmn_val_txt = 'CUSIP');
