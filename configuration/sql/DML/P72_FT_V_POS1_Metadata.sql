-- 2022-05-12 PSG Nick Sekouris
-- define FT_V_POS1 view for position flag
-- GS metadata definitions from starterset.xls

-- TBDF
INSERT INTO ft_t_tbdf (tbl_id, tbl_ddl_nme, last_chg_tms, last_chg_usr_id, tbl_nme, tbl_desc, tbl_clsf_typ, tbl_view_nme)
   SELECT 'POS1', 'FT_V_POS1', SYSDATE(), 'P72:CSTM', 'Point72 Position Flag View', 'Each occurrence of the POS1 view derives a Y/N position flag for every instrument Country Primary listing', 'X', NULL
     FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_tbdf WHERE tbl_id = 'POS1');

-- FLDF
INSERT INTO ft_t_fldf (fld_id,last_chg_tms,last_chg_usr_id,fld_data_cl_id,prnt_fld_id,ddl_nme,just_typ,fld_used_by_typ,fld_nme,fld_desc)
    SELECT 'POS10001', SYSDATE(), 'P72:CSTM', 'IND', NULL, 'POS1_POSN_FLAG', 'L', 'T', 'Position Flag', 'Point72 Position Flag'
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_fldf WHERE ddl_nme = 'POS1_POSN_FLAG');

-- CLDF
INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num)
    SELECT 'POS1', 'LAST_CHG_USR_ID', '00003325', NULL, NULL, 'Y', 'VARCHAR(256)', 1, SYSDATE(), 'P72:CSTM', 'Y', 'Last Change User ID', 'This field contains the identifier of the last person or application that changed the values of the table occurrence on which this field resides.', 'VARCHAR', 256, NULL, NULL
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'POS1' AND col_nme = 'LAST_CHG_USR_ID');

INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num)
    SELECT 'POS1', 'LAST_CHG_TMS', '00003320', NULL, NULL, 'Y', 'DATE', 2, SYSDATE(), 'P72:CSTM', 'Y', 'Last Change Date/Time', 'This field contains the latest date and time that the values of the table occurrence on which this field resides were changed.', 'DATE', NULL, NULL, NULL
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'POS1' AND col_nme = 'LAST_CHG_TMS');

INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num)
    SELECT 'POS1', 'DATA_STAT_TYP', '00161255', NULL, NULL, 'N', 'VARCHAR(20)', 3, SYSDATE(), 'P72:CSTM', 'Y', 'Data Status', 'This field specifies the status of the data within this row of the table.  Normally the value of this field will be null indicating that the data is active.  Depending upon how a specific data vendor supplies data, other possible values include DELETED, REPLACED.  It is also possible to use this field to indicate the verification status of the data in this table row.  In that case possible values include UNVERIFIED and VERIFIED.', 'VARCHAR', 20, NULL, NULL
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'POS1' AND col_nme = 'DATA_STAT_TYP');

INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num)
    SELECT 'POS1', 'START_TMS', '00007490', NULL, NULL, 'Y', 'DATE', 4, SYSDATE(), 'P72:CSTM', 'Y', 'Start Date/Time', 'This field specifies the date and time from which the table occurrence is active.  In conjunction with the End Date/Time field, it determines the period when the table occurrence is active.', 'DATE', NULL, NULL, NULL
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'POS1' AND col_nme = 'START_TMS');

INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num)
    SELECT 'POS1', 'END_TMS', '00007450', NULL, NULL, 'N', 'DATE', 5, SYSDATE(), 'P72:CSTM', 'Y', 'End Date/Time', 'This field specifies the date and time after which the table occurrence is no longer active.  A value of null in this field indicates that an End Date/Time is not given and that the table occurrence is active.  The End Date/Time is used in conjunction w', 'DATE', NULL, NULL, NULL
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'POS1' AND col_nme = 'END_TMS');

INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num)
    SELECT 'POS1', 'DATA_SRC_ID', '00161254', NULL, NULL, 'N', 'VARCHAR(40)', 6, SYSDATE(), 'P72:CSTM', 'Y', 'Data Source ID', 'This field uniquely identifies the source that provided the data.  This is typically a vendor.  It is recommended that a unique mnemonic be supplied (for example, TELEKURS and EXTEL) in order to facilitate the identification of the data provider.', 'VARCHAR', 40, NULL, NULL
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'POS1' AND col_nme = 'DATA_SRC_ID');

INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num)
    SELECT 'POS1', 'MKT_ISS_OID', '00101590', NULL, NULL, 'Y', 'CHAR(10)', 7, SYSDATE(), 'P72:CSTM', 'Y', 'MKT_ISS_OID', 'CLN1_OID', 'CHAR', 10, NULL, NULL
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'POS1' AND col_nme = 'MKT_ISS_OID');

INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num)
    SELECT 'POS1', 'POS1_POSN_FLAG', 'POS10001', NULL, NULL, 'N', 'CHAR(1)', 8, SYSDATE(), 'P72:CSTM', 'Y', 'Position Flag', 'Point72 Position Flag', 'CHAR', 1, NULL, NULL
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'POS1' AND col_nme = 'POS1_POSN_FLAG');

-- TIDX
INSERT INTO ft_t_tidx (tidx_oid, tbl_id, tbl_index_nme, tbl_index_typ, last_chg_tms, last_chg_usr_id)
   SELECT 'POS1P001==', 'POS1', 'FT_V_POS1_PK', 'P', SYSDATE(), 'P72:CSTM'
     FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM ft_t_tidX WHERE TIDX_OID = 'POS1P001==');

-- TIDC
INSERT INTO ft_t_tidc (tidc_oid, tidx_oid, tbl_id, col_nme, col_sq_num, last_chg_tms, last_chg_usr_id)
   SELECT 'CLN1P00101', 'POS1P001==', 'POS1', 'MKT_ISS_OID',1, SYSDATE(), 'P72:CSTM'
     FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM ft_t_tidc WHERE tidc_OID = 'CLN1P00101');

