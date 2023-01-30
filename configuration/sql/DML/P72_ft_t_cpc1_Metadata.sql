-- Custom table to store files names of CAPCO files

--TBDF

INSERT INTO ft_t_tbdf (tbl_id, tbl_ddl_nme, last_chg_tms, last_chg_usr_id, tbl_nme, tbl_desc, tbl_clsf_typ, tbl_view_nme)
   SELECT 'CPC1', 'FT_T_CPC1', SYSDATE(), 'P72:CSTM', 'P72 CAPCO PreProcessing', 'Custom table used for storing files names of CAPCO files', 'X', NULL
     FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_tbdf WHERE tbl_id = 'CPC1');



--FLDF

INSERT INTO ft_t_fldf (fld_id,last_chg_tms,last_chg_usr_id,fld_data_cl_id,prnt_fld_id,ddl_nme,just_typ,fld_used_by_typ,fld_nme,fld_desc)
SELECT 'CPC10001', SYSDATE(), 'P72:CSTM', 'OID', NULL, 'CPC1_OID', 'L', 'T', 'CPC1_OID', 'CPC1_OID'
FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_fldf WHERE ddl_nme = 'CPC1_OID');



--CLDF

INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num)
   SELECT 'CPC1', 'LAST_CHG_USR_ID', '00003325', NULL, NULL, 'Y', 'VARCHAR(256)', 1, SYSDATE(), 'P72:CSTM', 'Y', 'Last Change User ID', 'This field contains the identifier of the last person or application that changed the values of the table occurrence on which this field resides.', 'VARCHAR', 256, NULL, NULL
     FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'CPC1' AND col_nme = 'LAST_CHG_USR_ID');

INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num)
   SELECT 'CPC1', 'LAST_CHG_TMS', '00003320', NULL, NULL, 'Y', 'CHAR(8)', 2, SYSDATE(), 'P72:CSTM', 'Y', 'Last Change Date/Time', 'This field contains the latest date and time that the values of the table occurrence on which this field resides were changed.', 'DATE', NULL, NULL, NULL
     FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'CPC1' AND col_nme = 'LAST_CHG_TMS');

INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num)
   SELECT 'CPC1', 'START_TMS', '00007490', NULL, NULL, 'Y', 'CHAR(8)', 3, SYSDATE(), 'P72:CSTM', 'Y', 'Start Date/Time', 'This field specifies the date and time from which the table occurrence is active.  In conjunction with the End Date/Time field, it determines the period when the table occurrence is active.', 'DATE', NULL, NULL, NULL
     FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'CPC1' AND col_nme = 'START_TMS');

INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num)
   SELECT 'CPC1', 'END_TMS', '00007450', NULL, NULL, 'N', 'CHAR(8)', 4, SYSDATE(), 'P72:CSTM', 'Y', 'End Date/Time', 'This field specifies the date and time after which the table occurrence is no longer active.  A value of ""null"" in this field indicates that an End Date/Time is not given and that the table occurrence is active.  The End Date/Time is used in conjunction w', 'DATE', NULL, NULL, NULL
     FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'CPC1' AND col_nme = 'END_TMS');

INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num)
   SELECT 'CPC1', 'CPC1_OID', 'CPC10001', NULL, NULL, 'Y', 'CHAR(10)', 5, SYSDATE(), 'P72:CSTM', 'Y', 'CPC1_OID', 'CPC1_OID', 'CHAR', 10, NULL, NULL
     FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'CPC1' AND col_nme = 'CPC1_OID');

INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num)
   SELECT 'CPC1', 'FILE_NME', '00180306', NULL, NULL, 'Y', 'VARCHAR(256)', 6, SYSDATE(), 'P72:CSTM', 'Y', 'File Name', 'This field identifies the file name created by the Positions engine, and should be processed by the Workflow.', 'VARCHAR', 256, NULL, NULL
     FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'CPC1' AND col_nme = 'FILE_NME');





----TIDX

INSERT INTO ft_t_tidx (tidx_oid, tbl_id, tbl_index_nme, tbl_index_typ, last_chg_tms, last_chg_usr_id)
   SELECT 'CPC1P001==', 'CPC1', 'FT_T_CPC1_PK', 'P', SYSDATE(), 'P72:CSTM'
     FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM ft_t_tidX WHERE TIDX_OID = 'CPC1P001==');

INSERT INTO ft_t_tidx (tidx_oid, tbl_id, tbl_index_nme, tbl_index_typ, last_chg_tms, last_chg_usr_id)
   SELECT 'CPC1U001==', 'CPC1', 'FT_T_CPC1_U001', 'U', SYSDATE(), 'P72:CSTM'
     FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM ft_t_tidX WHERE TIDX_OID = 'CPC1U001==');


	 
--TIDC
INSERT INTO ft_t_tidc (tidc_oid, tidx_oid, tbl_id, col_nme, col_sq_num, last_chg_tms, last_chg_usr_id)
SELECT 'CPC1P00101', 'CPC1P001==', 'CPC1', 'CPC1_OID',1, SYSDATE(), 'P72:CSTM'
FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM ft_t_tidc WHERE tidc_OID = 'CPC1P00101');

INSERT INTO ft_t_tidc (tidc_oid, tidx_oid, tbl_id, col_nme, col_sq_num, last_chg_tms, last_chg_usr_id)
SELECT 'CPC1U00101', 'CPC1U001==', 'CPC1', 'FILE_NME',1, SYSDATE(), 'P72:CSTM'
FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM ft_t_tidc WHERE tidc_OID = 'CPC1U00101');





--XSEG
INSERT INTO ft_t_xseg (segment_id, start_tms, last_chg_tms, last_chg_usr_id, segment_nme, segment_desc)
   SELECT '1000010', SYSDATE(), SYSDATE(), 'P72:CSTM', 'P72CAPCOPreProcessing', 'CPC1' 
     FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_xseg WHERE segment_Id = '1000010');

	 
--XSTO
INSERT INTO ft_t_xsto (segment_id, tbl_id, prnt_tbl_id, tbl_clsf_typ, last_chg_tms, last_chg_usr_id)
  SELECT 1000010, 'CPC1', 'CPC1', 'P', SYSDATE(), 'P72:CSTM'
     FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM ft_t_xsto WHERE segment_id = '1000010');



	 
--XELM
INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT '1000010', 'CPC1', 'LASTCHGUSRID', 'Last Change User ID', SYSDATE(), 'P72:CSTM', 'LAST_CHG_USR_ID' FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 1000010 AND TBL_ID = 'CPC1' AND ELEMENT_XML_TAG = 'LASTCHGUSRID');
INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT '1000010', 'CPC1', 'LASTCHGTMS', 'Last Change Date/Time', SYSDATE(), 'P72:CSTM', 'LAST_CHG_TMS' FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 1000010 AND TBL_ID = 'CPC1' AND ELEMENT_XML_TAG = 'LASTCHGTMS');
INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT '1000010', 'CPC1', 'STARTTMS', 'Start Date/Time', SYSDATE(), 'P72:CSTM', 'START_TMS' FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 1000010 AND TBL_ID = 'CPC1' AND ELEMENT_XML_TAG = 'STARTTMS');
INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT '1000010', 'CPC1', 'ENDTMS', 'End Date/Time', SYSDATE(), 'P72:CSTM', 'END_TMS' FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 1000010 AND TBL_ID = 'CPC1' AND ELEMENT_XML_TAG = 'ENDTMS');
INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT '1000010', 'CPC1', 'CPC1OID', 'CPC1_OID', SYSDATE(), 'P72:CSTM', 'CPC1_OID' FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 1000010 AND TBL_ID = 'CPC1' AND ELEMENT_XML_TAG = 'CPC1OID');
INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT '1000010', 'CPC1', 'FILENME', 'File Name', SYSDATE(), 'P72:CSTM', 'FILE_NME' FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 1000010 AND TBL_ID = 'CPC1' AND ELEMENT_XML_TAG = 'FILENME');
