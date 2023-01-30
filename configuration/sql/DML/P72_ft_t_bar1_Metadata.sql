--TBDF
INSERT INTO ft_t_tbdf (tbl_id, tbl_ddl_nme, last_chg_tms, last_chg_usr_id, tbl_nme, tbl_desc, tbl_clsf_typ, tbl_view_nme)
   SELECT 'BAR1', 'FT_T_BAR1', SYSDATE(), 'P72SETUP', 'BARRA Preprocessor', 'Custom table used for BARRA feed preprocessing', 'X', NULL
     FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_tbdf WHERE tbl_id = 'BAR1');
	 


--FLDF

INSERT INTO ft_t_fldf (fld_id,last_chg_tms,last_chg_usr_id,fld_data_cl_id,prnt_fld_id,ddl_nme,just_typ,fld_used_by_typ,fld_nme,fld_desc)
    SELECT 40000001, SYSDATE(), 'P72SETUP', 'OID', NULL, 'BAR1_OID', 'L', 'T', 'BAR1_OID', 'This field contains an arbitrary value that uniquely identifies an occurrence of this table.'
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_fldf WHERE ddl_nme = 'BAR1_OID');

INSERT INTO ft_t_fldf (fld_id,last_chg_tms,last_chg_usr_id,fld_data_cl_id,prnt_fld_id,ddl_nme,just_typ,fld_used_by_typ,fld_nme,fld_desc)
    SELECT 40000002, SYSDATE(), 'P72SETUP', 'LNGID100', NULL, 'BARRA_ID', 'L', 'T', 'BARRA ID', 'BARRA ID'
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_fldf WHERE ddl_nme = 'BARRA_ID');

INSERT INTO ft_t_fldf (fld_id,last_chg_tms,last_chg_usr_id,fld_data_cl_id,prnt_fld_id,ddl_nme,just_typ,fld_used_by_typ,fld_nme,fld_desc)
    SELECT 40000003, SYSDATE(), 'P72SETUP', 'TXTV20', NULL, 'ASSET_ID_TYPE', 'L', 'T', 'Asset ID Type', 'Asset ID Type'
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_fldf WHERE ddl_nme = 'ASSET_ID_TYPE');

INSERT INTO ft_t_fldf (fld_id,last_chg_tms,last_chg_usr_id,fld_data_cl_id,prnt_fld_id,ddl_nme,just_typ,fld_used_by_typ,fld_nme,fld_desc)
    SELECT 40000004, SYSDATE(), 'P72SETUP', 'LNGID100', NULL, 'ASSET_ID', 'L', 'T', 'Asset ID', 'Asset ID Type'
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_fldf WHERE ddl_nme = 'ASSET_ID');

INSERT INTO ft_t_fldf (fld_id,last_chg_tms,last_chg_usr_id,fld_data_cl_id,prnt_fld_id,ddl_nme,just_typ,fld_used_by_typ,fld_nme,fld_desc)
    SELECT 40000005, SYSDATE(), 'P72SETUP', 'DTYPV08', NULL, 'START_DATE', 'L', 'T', 'Start Date', 'Start Date'
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_fldf WHERE ddl_nme = 'START_DATE');

INSERT INTO ft_t_fldf (fld_id,last_chg_tms,last_chg_usr_id,fld_data_cl_id,prnt_fld_id,ddl_nme,just_typ,fld_used_by_typ,fld_nme,fld_desc)
    SELECT 40000006, SYSDATE(), 'P72SETUP', 'DTYPV08', NULL, 'END_DATE', 'L', 'T', 'End Date', 'End Date'
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_fldf WHERE ddl_nme = 'END_DATE');

INSERT INTO ft_t_fldf (fld_id,last_chg_tms,last_chg_usr_id,fld_data_cl_id,prnt_fld_id,ddl_nme,just_typ,fld_used_by_typ,fld_nme,fld_desc)
    SELECT 00003320, SYSDATE(), 'P72SETUP', 'LSTCHGDT', NULL, 'LAST_CHG_TMS', 'L', 'T', 'Last Change Date/Time', 'This field contains the latest date and time that the values of the table occurrence on which this field resides were changed.'
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_fldf WHERE ddl_nme = 'LAST_CHG_TMS');

INSERT INTO ft_t_fldf (fld_id,last_chg_tms,last_chg_usr_id,fld_data_cl_id,prnt_fld_id,ddl_nme,just_typ,fld_used_by_typ,fld_nme,fld_desc)
    SELECT 00003325, SYSDATE(), 'P72SETUP', 'USER', NULL, 'LAST_CHG_USR_ID', 'L', 'T', 'Last Change User ID', 'This field contains the identifier of the last person or application that changed the values of the table occurrence on which this field resides.'
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_fldf WHERE ddl_nme = 'LAST_CHG_USR_ID');




--CLDF

INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num)
    SELECT 'BAR1', 'BAR1_OID', '40000001', NULL, NULL, 'Y', 'CHAR(10)', 1, SYSDATE(), 'P72SETUP', 'Y', 'BAR1_OID', 'This field contains an arbitrary value that uniquely identifies an occurrence of this table.', 'CHAR', 10, NULL, NULL
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'BAR1' AND col_nme = 'BAR1_OID');

INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num)
    SELECT 'BAR1', 'BARRA_ID', '40000002', NULL, NULL, 'N', 'VARCHAR(100)', 2, SYSDATE(), 'P72SETUP', 'Y', 'BARRA ID', 'BARRA ID', 'VARCHAR', 100, NULL, NULL
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'BAR1' AND col_nme = 'BARRA_ID');

INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num)
    SELECT 'BAR1', 'ASSET_ID_TYPE', '40000003', NULL, NULL, 'N', 'VARCHAR(20)', 3, SYSDATE(), 'P72SETUP', 'Y', 'Asset ID Type', 'Asset ID Type', 'VARCHAR', 20, NULL, NULL
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'BAR1' AND col_nme = 'ASSET_ID_TYPE');

INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num)
    SELECT 'BAR1', 'ASSET_ID', '40000004', NULL, NULL, 'N', 'VARCHAR(100)', 4, SYSDATE(), 'P72SETUP', 'Y', 'Asset ID', 'Asset ID Type', 'VARCHAR', 100, NULL, NULL
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'BAR1' AND col_nme = 'ASSET_ID');

INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num)
    SELECT 'BAR1', 'START_DATE', '40000005', NULL, NULL, 'N', 'CHAR(8)', 5, SYSDATE(), 'P72SETUP', 'Y', 'Start Date', 'Start Date', 'CHAR', 8, NULL, NULL
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'BAR1' AND col_nme = 'START_DATE');

INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num)
    SELECT 'BAR1', 'END_DATE', '40000006', NULL, NULL, 'N', 'CHAR(8)', 6, SYSDATE(), 'P72SETUP', 'Y', 'End Date', 'End Date', 'CHAR', 8, NULL, NULL
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'BAR1' AND col_nme = 'END_DATE');

INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num)
    SELECT 'BAR1', 'LAST_CHG_TMS', '00003320', NULL, NULL, 'Y', 'TIMESTAMP(0)', 9, SYSDATE(), 'P72SETUP', 'Y', 'Last Change Date/Time', 'This field contains the latest date and time that the values of the table occurrence on which this field resides were changed.', 'TIMESTAMP', 0, NULL, NULL
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'BAR1' AND col_nme = 'LAST_CHG_TMS');

INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num)
    SELECT 'BAR1', 'LAST_CHG_USR_ID', '00003325', NULL, NULL, 'Y', 'VARCHAR(256)', 10, SYSDATE(), 'P72SETUP', 'Y', 'Last Change User ID', 'This field contains the identifier of the last person or application that changed the values of the table occurrence on which this field resides.', 'VARCHAR', 256, NULL, NULL
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'BAR1' AND col_nme = 'LAST_CHG_USR_ID');





----TIDX

INSERT INTO ft_t_tidx (tidx_oid, tbl_id, tbl_index_nme, tbl_index_typ, last_chg_tms, last_chg_usr_id)
   SELECT 'BAR1P001==', 'BAR1', 'FT_T_BAR1_PK', 'P', SYSDATE(), 'P72SETUP'
     FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM ft_t_tidX WHERE TIDX_OID = 'BAR1P001==');

INSERT INTO ft_t_tidx (tidx_oid, tbl_id, tbl_index_nme, tbl_index_typ, last_chg_tms, last_chg_usr_id)
   SELECT 'BAR1U001==', 'BAR1', 'FT_X_BAR1_U001', 'U', SYSDATE(), 'P72SETUP'
     FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM ft_t_tidX WHERE TIDX_OID = 'BAR1U001==');
	 
--TIDC
INSERT INTO ft_t_tidc (tidc_oid, tidx_oid, tbl_id, col_nme, col_sq_num, last_chg_tms, last_chg_usr_id)
   SELECT 'BAR1P00101', 'BAR1P001==', 'BAR1', 'BAR1_OID',1, SYSDATE(), 'P72SETUP'
     FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM ft_t_tidc WHERE tidc_OID = 'BAR1P00101');

INSERT INTO ft_t_tidc (tidc_oid, tidx_oid, tbl_id, col_nme, col_sq_num, last_chg_tms, last_chg_usr_id)
   SELECT 'BAR1U00101', 'BAR1U001==', 'BAR1', 'BARRA_ID',1, SYSDATE(), 'P72SETUP'
     FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM ft_t_tidc WHERE tidc_OID = 'BAR1U00101');

INSERT INTO ft_t_tidc (tidc_oid, tidx_oid, tbl_id, col_nme, col_sq_num, last_chg_tms, last_chg_usr_id)
   SELECT 'BAR1U00102', 'BAR1U001==', 'BAR1', 'ASSET_ID_TYPE',2, SYSDATE(), 'P72SETUP'
     FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM ft_t_tidc WHERE tidc_OID = 'BAR1U00102');

INSERT INTO ft_t_tidc (tidc_oid, tidx_oid, tbl_id, col_nme, col_sq_num, last_chg_tms, last_chg_usr_id)
   SELECT 'BAR1U00103', 'BAR1U001==', 'BAR1', 'ASSET_ID',3, SYSDATE(), 'P72SETUP'
     FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM ft_t_tidc WHERE tidc_OID = 'BAR1U00103');

--XSEG
INSERT INTO ft_t_xseg (segment_id, start_tms, last_chg_tms, last_chg_usr_id, segment_nme, segment_desc)
   SELECT '1000001', SYSDATE(), SYSDATE(), 'P72SETUP', 'BARRAPreProcessor', 'BAR1' 
     FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_xseg WHERE segment_Id = '1000001');
	 
--XSTO
INSERT INTO ft_t_xsto (segment_id, tbl_id, prnt_tbl_id, tbl_clsf_typ, last_chg_tms, last_chg_usr_id)
  SELECT 1000001, 'BAR1', 'BAR1', 'P', SYSDATE(), 'P72SETUP'
     FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM ft_t_xsto WHERE segment_id = '1000001');
	 
--XELM
INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT '1000001', 'BAR1', 'BAR1OID', 'BAR1_OID', SYSDATE(), 'P72SETUP', 'BAR1_OID' FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 1000001 AND TBL_ID = 'BAR1' AND ELEMENT_XML_TAG = 'BAR1OID');
INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT '1000001', 'BAR1', 'BARRAID', 'BARRA ID', SYSDATE(), 'P72SETUP', 'BARRA_ID' FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 1000001 AND TBL_ID = 'BAR1' AND ELEMENT_XML_TAG = 'BARRAID');
INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT '1000001', 'BAR1', 'ASSETIDTYPE', 'Asset ID Type', SYSDATE(), 'P72SETUP', 'ASSET_ID_TYPE' FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 1000001 AND TBL_ID = 'BAR1' AND ELEMENT_XML_TAG = 'ASSETIDTYPE');
INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT '1000001', 'BAR1', 'ASSETID', 'Asset ID', SYSDATE(), 'P72SETUP', 'ASSET_ID' FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 1000001 AND TBL_ID = 'BAR1' AND ELEMENT_XML_TAG = 'ASSETID');
INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT '1000001', 'BAR1', 'STARTDATE', 'Start Date', SYSDATE(), 'P72SETUP', 'START_DATE' FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 1000001 AND TBL_ID = 'BAR1' AND ELEMENT_XML_TAG = 'STARTDATE');
INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT '1000001', 'BAR1', 'ENDDATE', 'End Date', SYSDATE(), 'P72SETUP', 'END_DATE' FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 1000001 AND TBL_ID = 'BAR1' AND ELEMENT_XML_TAG = 'ENDDATE');
INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT '1000001', 'BAR1', 'LASTCHGTMS', 'Last Change Date/Time', SYSDATE(), 'P72SETUP', 'LAST_CHG_TMS' FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 1000001 AND TBL_ID = 'BAR1' AND ELEMENT_XML_TAG = 'LASTCHGTMS');
INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT '1000001', 'BAR1', 'LASTCHGUSRID', 'Last Change User ID', SYSDATE(), 'P72SETUP', 'LAST_CHG_USR_ID' FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 1000001 AND TBL_ID = 'BAR1' AND ELEMENT_XML_TAG = 'LASTCHGUSRID');