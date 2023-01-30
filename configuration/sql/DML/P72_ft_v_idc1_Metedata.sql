--TBDF
INSERT INTO ft_t_tbdf (tbl_id, tbl_ddl_nme, last_chg_tms, last_chg_usr_id, tbl_nme, tbl_desc, tbl_clsf_typ, tbl_view_nme)
   SELECT 'IDC1', 'FT_V_IDC1', SYSDATE(), 'GS:PSG:P72', 'P72 ID Change Status', 'Custom view used for Point72 ID Change Status in GSO', 'X', NULL
     FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_tbdf WHERE tbl_id = 'IDC1');

--FLDF

INSERT INTO ft_t_fldf (fld_id,last_chg_tms,last_chg_usr_id,fld_data_cl_id,prnt_fld_id,ddl_nme,just_typ,fld_used_by_typ,fld_nme,fld_desc)
    SELECT 'IDC10001', SYSDATE(), 'GS:PSG:P72', 'TXTV20', NULL, 'DERIVED_VALUE', 'L', 'T', 'DERIVED_VALUE', 'This field contains an ID Change value.'
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_fldf WHERE ddl_nme = 'DERIVED_VALUE');
--CLDF
INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num, col_view_nme, info_typ_nme)
    SELECT 'IDC1', 'ISSACT_ID', '00003140', 'IADC', 'ISSACT_ID', 'Y', 'VARCHAR(10)', 1, SYSDATE(), 'GS:PSG:P72', 'Y', 'Issue Action ID', 'This field stores a unique identifier for an Issue Action Declaration table occurrence.', 'VARCHAR', 10, NULL, NULL, 'Issue_Action_ID', 'OBJECT_IDENTIFIER'
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'IDC1' AND col_nme = 'ISSACT_ID'); 


INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num, col_view_nme, info_typ_nme)
    SELECT 'IDC1', 'DERIVED_VALUE', 'IDC10001', NULL, NULL, 'N', 'VARCHAR(20)', 3, SYSDATE(), 'GS:PSG:P72', 'Y', 'DERIVED VALUE', 'This field contains an ID Change value.', 'VARCHAR', 20, NULL, NULL, 'DERIVED_VALUE', 'DATA_TYPE-V20'
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'IDC1' AND col_nme = 'DERIVED_VALUE');



--TIDX 
INSERT INTO ft_t_tidx (tidx_oid, tbl_id, tbl_index_nme, tbl_index_typ, last_chg_tms, last_chg_usr_id)
   SELECT 'IDC1P001==', 'IDC1', 'FT_V_IDC1_PK', 'P', SYSDATE(), 'GS:PSG:P72'
     FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM ft_t_tidX WHERE TIDX_OID = 'IDC1P001==');

--TIDC
INSERT INTO ft_t_tidc (tidc_oid, tidx_oid, tbl_id, col_nme, col_sq_num, last_chg_tms, last_chg_usr_id)
   SELECT 'IDC1P00101', 'IDC1P001==', 'IDC1', 'ISSACT_ID', 1, SYSDATE(), 'GS:PSG:P72'
     FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM ft_t_tidc WHERE tidc_OID = 'IDC1P00101');