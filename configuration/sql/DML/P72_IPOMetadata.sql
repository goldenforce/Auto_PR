--TBDF
INSERT INTO ft_t_tbdf (tbl_id, tbl_ddl_nme, last_chg_tms, last_chg_usr_id, tbl_nme, tbl_desc, tbl_clsf_typ, tbl_view_nme)
   SELECT 'IPOS', 'FT_V_IPOS', SYSDATE(), 'P72IPOSTATUS', 'P72 IPO Status', 'Custom view used for Point72 IPO Status in GSO', 'X', NULL
     FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_tbdf WHERE tbl_id = 'IPOS');


--FLDF
INSERT INTO ft_t_fldf
(fld_id, last_chg_tms, last_chg_usr_id, fld_data_cl_id, fld_tag_typ, prnt_fld_id, fld_dflt_meth_nme, fld_edit_meth_nme, ddl_nme, fill_char, just_typ, ctl_tot_elig_ind, fld_used_by_typ, dmn_tbl_typ, fld_dflt_val_txt, fld_nme, fld_desc, dspy_data_typ, dspy_int_num, dspy_dec_num, dspy_caption_txt, mn_val_camt, mx_val_camt, fld_dflt_camt)
SELECT 'IPO10001', '2022-03-18 19:44:13.000', 'P72:CSTM', 'TXT1024', NULL, NULL, NULL, NULL, 'IPO_STATUS', NULL, 'L', NULL, 'T', NULL, NULL, 'IPO_STATUS', 'IPO_STATUS', NULL, NULL, NULL, NULL, NULL, NULL, NULL
FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_fldf WHERE fld_id = 'IPO10001' );


--CLDF
INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num, col_view_nme, info_typ_nme)
    SELECT 'IPOS', 'ISSACT_ID', '00003140', 'IADC', 'ISSACT_ID', 'Y', 'VARCHAR(10)', 1, SYSDATE(), 'P72IPOSTATUS', 'Y', 'Issue Action ID', 'This field stores a unique identifier for an Issue Action Declaration table occurrence.', 'VARCHAR', 10, NULL, NULL, 'Issue_Action_ID', 'OBJECT_IDENTIFIER'
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'IPOS' AND col_nme = 'ISSACT_ID'); 

INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num, col_view_nme, info_typ_nme)
    SELECT 'IPOS', 'IPO_STATUS', 'IPO10001', NULL, NULL, 'N', 'VARCHAR(20)', 3, SYSDATE(), 'P72IPOSTATUS', 'Y', 'IPO Status', 'This field stores the most recent output status, indicating whether the output is complete, complete with errors, complete with no data, not started, etc.', 'VARCHAR', 20, NULL, NULL, 'Approval_Status', 'STATUS_TYPE-V20'
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'IPOS' AND col_nme = 'IPO_STATUS');


--TIDX 
INSERT INTO ft_t_tidx (tidx_oid, tbl_id, tbl_index_nme, tbl_index_typ, last_chg_tms, last_chg_usr_id)
   SELECT 'IPOSP001==', 'IPOS', 'FT_V_IPOS_PK', 'P', SYSDATE(), 'P72IPOSTATUS'
     FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM ft_t_tidX WHERE TIDX_OID = 'IPOSP001==');


--TIDC
INSERT INTO ft_t_tidc (tidc_oid, tidx_oid, tbl_id, col_nme, col_sq_num, last_chg_tms, last_chg_usr_id)
   SELECT 'IPOSP00101', 'IPOSP001==', 'IPOS', 'ISSACT_ID', 1, SYSDATE(), 'P72IPOSTATUS'
     FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM ft_t_tidc WHERE tidc_OID = 'IPOSP00101');
