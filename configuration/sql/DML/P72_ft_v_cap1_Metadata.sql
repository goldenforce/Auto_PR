INSERT INTO ft_t_tbdf (tbl_id, tbl_ddl_nme, last_chg_tms, last_chg_usr_id, tbl_nme, tbl_desc, tbl_clsf_typ, tbl_view_nme)
   SELECT 'CAP1', 'FT_V_CAP1', SYSDATE(), 'P72SETUP', 'P72 CA Approval Status', 'Custom view used for Point72 CA Approval Status in GSO', 'X', NULL
     FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_tbdf WHERE tbl_id = 'CAP1');

--CLDF
INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num, col_view_nme, info_typ_nme)
    SELECT 'CAP1', 'ISSACT_ID', '00003140', 'IADC', 'ISSACT_ID', 'Y', 'VARCHAR(10)', 1, SYSDATE(), 'P72SETUP', 'Y', 'Issue Action ID', 'This field stores a unique identifier for an Issue Action Declaration table occurrence.', 'VARCHAR', 10, NULL, NULL, 'Issue_Action_ID', 'OBJECT_IDENTIFIER'
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'CAP1' AND col_nme = 'ISSACT_ID'); 

INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num, col_view_nme, info_typ_nme)
    SELECT 'CAP1', 'INSTR_ID', '00003010', 'ISSU', 'INSTR_ID', 'Y', 'VARCHAR(10)', 2, SYSDATE(), 'P72SETUP', 'Y', 'Instrument ID', 'This field acts as a surrogate key for the Issue table and uniquely identifies an occurrence of the Issue table.  This field''s value is normally created via an algorithm that guarantees a unique value.  The Instrument ID contains a non-descriptive value since there is no commonly used worldwide identification scheme that can be applied to all Issues.', 'VARCHAR', 10, NULL, NULL, 'Instrument_ID', 'OBJECT_IDENTIFIER'
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'CAP1' AND col_nme = 'INSTR_ID');

INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num, col_view_nme, info_typ_nme)
    SELECT 'CAP1', 'APPROVAL_STAT_TYP', '00174028', NULL, NULL, 'N', 'VARCHAR(20)', 3, SYSDATE(), 'P72SETUP', 'Y', 'Approval Status', 'This field stores the most recent output status, indicating whether the output is complete, complete with errors, complete with no data, not started, etc.', 'VARCHAR', 20, NULL, NULL, 'Approval_Status', 'STATUS_TYPE-V20'
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'CAP1' AND col_nme = 'APPROVAL_STAT_TYP');



--TIDX 
INSERT INTO ft_t_tidx (tidx_oid, tbl_id, tbl_index_nme, tbl_index_typ, last_chg_tms, last_chg_usr_id)
   SELECT 'CAP1P001==', 'CAP1', 'FT_V_CAP1_PK', 'P', SYSDATE(), 'P72SETUP'
     FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM ft_t_tidX WHERE TIDX_OID = 'CAP1P001==');

--TIDC
INSERT INTO ft_t_tidc (tidc_oid, tidx_oid, tbl_id, col_nme, col_sq_num, last_chg_tms, last_chg_usr_id)
   SELECT 'CAP1P00101', 'CAP1P001==', 'CAP1', 'ISSACT_ID', 1, SYSDATE(), 'P72SETUP'
     FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM ft_t_tidc WHERE tidc_OID = 'CAP1P00101');