-- 2021-11-28 Nick Sekouris
-- Client: Point72 | version 8.8.1 | postgres
-- Custom table to pre-process custom IDs (e.g. WorldScope, Barra)

--TBDF
INSERT INTO ft_t_tbdf (tbl_id, tbl_ddl_nme, last_chg_tms, last_chg_usr_id, tbl_nme, tbl_desc, tbl_clsf_typ, tbl_view_nme)
   SELECT 'WID1', 'FT_T_WID1', SYSDATE(), 'P72SETUP', 'P72 Custom ID Preprocessor', 'Custom table used for Point72 custom ID feed preprocessing', 'X', NULL
     FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_tbdf WHERE tbl_id = 'WID1');


--FLDF

INSERT INTO ft_t_fldf (fld_id,last_chg_tms,last_chg_usr_id,fld_data_cl_id,prnt_fld_id,ddl_nme,just_typ,fld_used_by_typ,fld_nme,fld_desc)
    SELECT '40000010', SYSDATE(), 'P72SETUP', 'OID', NULL, 'WID1_OID', 'L', 'T', 'WID1_OID', 'This field contains an arbitrary value that uniquely identifies an occurrence of this table.'
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_fldf WHERE ddl_nme = 'WID1_OID'); 

INSERT INTO ft_t_fldf (fld_id,last_chg_tms,last_chg_usr_id,fld_data_cl_id,prnt_fld_id,ddl_nme,just_typ,fld_used_by_typ,fld_nme,fld_desc)
    SELECT '40000011', SYSDATE(), 'P72SETUP', 'LNGID100', NULL, 'CUSTOM_ID', 'L', 'T', 'CUSTOM ID', 'CUSTOM ID'
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_fldf WHERE ddl_nme = 'CUSTOM_ID');

INSERT INTO ft_t_fldf (fld_id,last_chg_tms,last_chg_usr_id,fld_data_cl_id,prnt_fld_id,ddl_nme,just_typ,fld_used_by_typ,fld_nme,fld_desc)
    SELECT '40000012', SYSDATE(), 'P72SETUP', 'TXTV20', NULL, 'SEDOL', 'L', 'T', 'SEDOL', 'SEDOL'
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_fldf WHERE ddl_nme = 'SEDOL');

INSERT INTO ft_t_fldf (fld_id,last_chg_tms,last_chg_usr_id,fld_data_cl_id,prnt_fld_id,ddl_nme,just_typ,fld_used_by_typ,fld_nme,fld_desc)
    SELECT '40000013', SYSDATE(), 'P72SETUP', 'TXTV20', NULL, 'CINS', 'L', 'T', 'CINS', 'CINS'
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_fldf WHERE ddl_nme = 'CINS');

INSERT INTO ft_t_fldf (fld_id,last_chg_tms,last_chg_usr_id,fld_data_cl_id,prnt_fld_id,ddl_nme,just_typ,fld_used_by_typ,fld_nme,fld_desc)
    SELECT '40000014', SYSDATE(), 'P72SETUP', 'TXTV20', NULL, 'CUSIP', 'L', 'T', 'CUSIP', 'CUSIP'
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_fldf WHERE ddl_nme = 'CUSIP');

INSERT INTO ft_t_fldf (fld_id,last_chg_tms,last_chg_usr_id,fld_data_cl_id,prnt_fld_id,ddl_nme,just_typ,fld_used_by_typ,fld_nme,fld_desc)
    SELECT '40000015', SYSDATE(), 'P72SETUP', 'TXTV20', NULL, 'ISIN', 'L', 'T', 'ISIN', 'ISIN'
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_fldf WHERE ddl_nme = 'ISIN');

INSERT INTO ft_t_fldf (fld_id,last_chg_tms,last_chg_usr_id,fld_data_cl_id,prnt_fld_id,ddl_nme,just_typ,fld_used_by_typ,fld_nme,fld_desc)
    SELECT '40000016', SYSDATE(), 'P72SETUP', 'DTYPV08', NULL, 'START_DATE', 'L', 'T', 'Start Date', 'Start Date for Custom ID'
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_fldf WHERE ddl_nme = 'START_DATE');

INSERT INTO ft_t_fldf (fld_id,last_chg_tms,last_chg_usr_id,fld_data_cl_id,prnt_fld_id,ddl_nme,just_typ,fld_used_by_typ,fld_nme,fld_desc)
    SELECT '40000017', SYSDATE(), 'P72SETUP', 'DTYPV08', NULL, 'END_DATE', 'L', 'T', 'End Date', 'End Date for Custom ID'
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_fldf WHERE ddl_nme = 'END_DATE');

INSERT INTO ft_t_fldf (fld_id,last_chg_tms,last_chg_usr_id,fld_data_cl_id,prnt_fld_id,ddl_nme,just_typ,fld_used_by_typ,fld_nme,fld_desc)
    SELECT '00003320', SYSDATE(), 'P72SETUP', 'LSTCHGDT', NULL, 'LAST_CHG_TMS', 'L', 'T', 'Last Change Date/Time', 'This field contains the latest date and time that the values of the table occurrence on which this field resides were changed.'
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_fldf WHERE ddl_nme = 'LAST_CHG_TMS');

INSERT INTO ft_t_fldf (fld_id,last_chg_tms,last_chg_usr_id,fld_data_cl_id,prnt_fld_id,ddl_nme,just_typ,fld_used_by_typ,fld_nme,fld_desc)
    SELECT '00003325', SYSDATE(), 'P72SETUP', 'USER', NULL, 'LAST_CHG_USR_ID', 'L', 'T', 'Last Change User ID', 'This field contains the identifier of the last person or application that changed the values of the table occurrence on which this field resides.'
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_fldf WHERE ddl_nme = 'LAST_CHG_USR_ID');


--CLDF

INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num)
    SELECT 'WID1', 'WID1_OID', '40000010', NULL, NULL, 'Y', 'CHAR(10)', 1, SYSDATE(), 'P72SETUP', 'Y', 'WID1_OID', 'This field contains an arbitrary value that uniquely identifies an occurrence of this table.', 'CHAR', 10, NULL, NULL
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'WID1' AND col_nme = 'WID1_OID'); 

INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num)
    SELECT 'WID1', 'CUSTOM_ID', '40000011', NULL, NULL, 'N', 'VARCHAR(100)', 2, SYSDATE(), 'P72SETUP', 'Y', 'CUSTOM ID', 'CUSTOM ID', 'VARCHAR', 100, NULL, NULL
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'WID1' AND col_nme = 'CUSTOM_ID');

INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num)
    SELECT 'WID1', 'SEDOL', '40000012', NULL, NULL, 'N', 'VARCHAR(20)', 3, SYSDATE(), 'P72SETUP', 'Y', 'SEDOL', 'SEDOL', 'VARCHAR', 20, NULL, NULL
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'WID1' AND col_nme = 'SEDOL');

INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num)
    SELECT 'WID1', 'CINS', '40000013', NULL, NULL, 'N', 'VARCHAR(20)', 4, SYSDATE(), 'P72SETUP', 'Y', 'CINS', 'CINS', 'VARCHAR', 20, NULL, NULL
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'WID1' AND col_nme = 'CINS');

INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num)
    SELECT 'WID1', 'CUSIP', '40000014', NULL, NULL, 'N', 'VARCHAR(20)', 5, SYSDATE(), 'P72SETUP', 'Y', 'CUSIP', 'CUSIP', 'VARCHAR', 20, NULL, NULL
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'WID1' AND col_nme = 'CUSIP');

INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num)
    SELECT 'WID1', 'ISIN', '40000015', NULL, NULL, 'N', 'VARCHAR(20)', 6, SYSDATE(), 'P72SETUP', 'Y', 'ISIN', 'ISIN', 'VARCHAR', 20, NULL, NULL
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'WID1' AND col_nme = 'ISIN');

INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num)
    SELECT 'WID1', 'START_DATE', '40000005', NULL, NULL, 'N', 'CHAR(8)', 7, SYSDATE(), 'P72SETUP', 'Y', 'Start Date', 'Start Date for Custom ID', 'CHAR', 8, NULL, NULL
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'WID1' AND col_nme = 'START_DATE');

INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num)
    SELECT 'WID1', 'END_DATE', '40000006', NULL, NULL, 'N', 'CHAR(8)', 8, SYSDATE(), 'P72SETUP', 'Y', 'End Date', 'End Date for Custom ID', 'CHAR', 8, NULL, NULL
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'WID1' AND col_nme = 'END_DATE');

INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num)
    SELECT 'WID1', 'LAST_CHG_TMS', '00003320', NULL, NULL, 'Y', 'TIMESTAMP(0)', 9, SYSDATE(), 'P72SETUP', 'Y', 'Last Change Date/Time', 'This field contains the latest date and time that the values of the table occurrence on which this field resides were changed.', 'TIMESTAMP', 0, NULL, NULL
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'WID1' AND col_nme = 'LAST_CHG_TMS');

INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num)
    SELECT 'WID1', 'LAST_CHG_USR_ID', '00003325', NULL, NULL, 'Y', 'VARCHAR(256)', 10, SYSDATE(), 'P72SETUP', 'Y', 'Last Change User ID', 'This field contains the identifier of the last person or application that changed the values of the table occurrence on which this field resides.', 'VARCHAR', 256, NULL, NULL
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'WID1' AND col_nme = 'LAST_CHG_USR_ID');


----TIDX

INSERT INTO ft_t_tidx (tidx_oid, tbl_id, tbl_index_nme, tbl_index_typ, last_chg_tms, last_chg_usr_id)
   SELECT 'WID1P001==', 'WID1', 'FT_T_WID1_PK', 'P', SYSDATE(), 'P72SETUP'
     FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM ft_t_tidX WHERE TIDX_OID = 'WID1P001==');

INSERT INTO ft_t_tidx (tidx_oid, tbl_id, tbl_index_nme, tbl_index_typ, last_chg_tms, last_chg_usr_id)
   SELECT 'WID1U001==', 'WID1', 'FT_X_WID1_U001', 'U', SYSDATE(), 'P72SETUP'
     FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM ft_t_tidX WHERE TIDX_OID = 'WID1U001==');
	 
--TIDC
INSERT INTO ft_t_tidc (tidc_oid, tidx_oid, tbl_id, col_nme, col_sq_num, last_chg_tms, last_chg_usr_id)
   SELECT 'WID1P00101', 'WID1P001==', 'WID1', 'WID1_OID',1, SYSDATE(), 'P72SETUP'
     FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM ft_t_tidc WHERE tidc_OID = 'WID1P00101');

INSERT INTO ft_t_tidc (tidc_oid, tidx_oid, tbl_id, col_nme, col_sq_num, last_chg_tms, last_chg_usr_id)
   SELECT 'WID1U00101', 'WID1U001==', 'WID1', 'CUSTOM_ID',1, SYSDATE(), 'P72SETUP'
     FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM ft_t_tidc WHERE tidc_OID = 'WID1U00101');

--XSEG
INSERT INTO ft_t_xseg (segment_id, start_tms, last_chg_tms, last_chg_usr_id, segment_nme, segment_desc)
   SELECT 1000002, SYSDATE(), SYSDATE(), 'P72SETUP', 'P72CustomIDPreProcessor', 'WID1' 
     FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_xseg WHERE segment_Id = 1000002);
	 
--XSTO
INSERT INTO ft_t_xsto (segment_id, tbl_id, prnt_tbl_id, tbl_clsf_typ, last_chg_tms, last_chg_usr_id)
  SELECT 1000002, 'WID1', 'WID1', 'P', SYSDATE(), 'P72SETUP'
     FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM ft_t_xsto WHERE segment_id = 1000002);
	 
--XELM
INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT 1000002, 'WID1', 'WID1OID'		,'WID1_OID'				,SYSDATE(), 'P72SETUP', 'WID1_OID' 		  FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 1000002 AND TBL_ID = 'WID1' AND ELEMENT_XML_TAG = 'WID1OID'); 
INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT 1000002, 'WID1', 'CUSTOMID'  	,'CUSTOM ID'			,SYSDATE(), 'P72SETUP', 'CUSTOM_ID' 	  FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 1000002 AND TBL_ID = 'WID1' AND ELEMENT_XML_TAG = 'CUSTOMID');
INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT 1000002, 'WID1', 'SEDOL'		,'SEDOL'				,SYSDATE(), 'P72SETUP', 'SEDOL' 		  FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 1000002 AND TBL_ID = 'WID1' AND ELEMENT_XML_TAG = 'SEDOL');
INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT 1000002, 'WID1', 'CINS'		,'CINS'					,SYSDATE(), 'P72SETUP', 'CINS' 			  FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 1000002 AND TBL_ID = 'WID1' AND ELEMENT_XML_TAG = 'CINS');
INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT 1000002, 'WID1', 'CUSIP'		,'CUSIP'				,SYSDATE(), 'P72SETUP', 'CUSIP' 		  FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 1000002 AND TBL_ID = 'WID1' AND ELEMENT_XML_TAG = 'CUSIP');
INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT 1000002, 'WID1', 'ISIN'		,'ISIN'					,SYSDATE(), 'P72SETUP', 'ISIN' 			  FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 1000002 AND TBL_ID = 'WID1' AND ELEMENT_XML_TAG = 'ISIN');
INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT 1000002, 'WID1', 'STARTDATE'	,'Start Date'			,SYSDATE(), 'P72SETUP', 'START_DATE' 	  FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 1000002 AND TBL_ID = 'WID1' AND ELEMENT_XML_TAG = 'STARTDATE');
INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT 1000002, 'WID1', 'ENDDATE'		,'End Date'				,SYSDATE(), 'P72SETUP', 'END_DATE' 		  FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 1000002 AND TBL_ID = 'WID1' AND ELEMENT_XML_TAG = 'ENDDATE');
INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT 1000002, 'WID1', 'LASTCHGTMS'	,'Last Change Date/Time',SYSDATE(), 'P72SETUP', 'LAST_CHG_TMS' 	  FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 1000002 AND TBL_ID = 'WID1' AND ELEMENT_XML_TAG = 'LASTCHGTMS');
INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT 1000002, 'WID1', 'LASTCHGUSRID','Last Change User ID'	,SYSDATE(), 'P72SETUP', 'LAST_CHG_USR_ID' FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 1000002 AND TBL_ID = 'WID1' AND ELEMENT_XML_TAG = 'LASTCHGUSRID');

-- MKEY
insert into ft_o_mkey (TBL_ID ,col_nme ,match_key_nme ,last_chg_tms ,last_chg_usr_id) select 'WID1' ,'CUSTOM_ID' ,'WID1_CUSTOM_ID' ,SYSDATE() ,'P72SETUP' from dual WHERE NOT EXISTS ( SELECT 'X' FROM FT_o_mkey where tbl_id='WID1' and match_key_nme='WID1_CUSTOM_ID' ) ;
