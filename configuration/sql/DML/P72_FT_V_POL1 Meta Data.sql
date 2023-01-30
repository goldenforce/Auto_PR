DELETE from fT_T_TBDF WHERE TBL_ID = 'POL1';
DELETE from FT_T_XSTO WHERE TBL_ID = 'POL1';
DELETE from FT_T_XSEG WHERE SEGMENT_DESC = 'POL1';
DELETE from FT_T_CLMI WHERE TRGT_TBL_ID = 'POL1';
DELETE from FT_T_ETDF WHERE TBL_SYNM_ID = 'POL1';

Insert into FT_T_ETDF(LAST_CHG_TMS,LAST_CHG_USR_ID,TBL_SYNM_ID,TBL_SYNM_DDL_NME,TBL_SYNM_NME,TBL_SYNM_DESC,SEGMENT_NME,SEGMENT_DESC,PRNT_TBL_ID)
Values(SYSDATE(),'P72:CSTM','POL1','FT_V_POL1','FT_T_POL1',null,'FT_V_POL1',null,'ETDF');
Insert into FT_T_TBDF(TBL_ID,LAST_CHG_TMS,LAST_CHG_USR_ID,TBL_NME,TBL_DESC,TBL_DDL_NME,TBL_CLSF_TYP,TBL_SUBJECT_AREA_NME,TBL_DATA_OWNER_NME,TBL_DATA_TYP,TBL_DATA_UPD_RULE_TYP,TBL_VIEW_NME,DATA_MODL_ID,CDC_ENABLED_IND)
Values('POL1',SYSDATE(),'P72:CSTM','FT_V_POL1',null,'FT_V_POL1','C','Custom','Custom','Client','UnRestricted','FT_V_POL1','GSDM','N');

Insert into FT_T_CLDF(TBL_ID,LAST_CHG_TMS,LAST_CHG_USR_ID,COL_NME,FLD_ID,COL_REQ_IND,DDL_DATA_TYP,COL_SQ_NUM,LOGL_NME,DDL_BASE_DATA_TYP,DDL_DATA_LEN,DDL_DATA_PREC_NUM,DDL_DATA_SCALE_NUM,DDL_DATA_DFLT_TXT,COL_VIEW_NME,INFO_TYP_NME,DSPY_CAPTION_TXT)
Values('POL1',SYSDATE(),'P72:CSTM','OVR_REF_OID','00102739','N','VARCHAR2(16)',2,'Override Reference ID','CHAR',16,16,0,null,'OVR_REF_OID','OBJECT_IDENTIFIER-V16','Override Reference ID');
Insert into FT_T_FLDF(FLD_ID,LAST_CHG_TMS,LAST_CHG_USR_ID,DDL_NME,FLD_USED_BY_TYP,FLD_NME,FLD_DATA_CL_ID)
SELECT 'POL10002',SYSDATE(),'P72:CSTM','POSITION_LOCK','T','Position Lock','BETEXT'FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM FT_T_FLDF WHERE FLD_ID = 'POL10002');
Insert into FT_T_CLDF(TBL_ID,LAST_CHG_TMS,LAST_CHG_USR_ID,COL_NME,FLD_ID,COL_REQ_IND,DDL_DATA_TYP,COL_SQ_NUM,LOGL_NME,DDL_BASE_DATA_TYP,DDL_DATA_LEN,DDL_DATA_PREC_NUM,DDL_DATA_SCALE_NUM,DDL_DATA_DFLT_TXT,COL_VIEW_NME,INFO_TYP_NME,DSPY_CAPTION_TXT)
Values('POL1',SYSDATE(),'P72:CSTM','POSITION_LOCK','POL10002','N','VARCHAR2(1)',1,'Position Lock','VARCHAR',1,1,0,null,'POSITION_LOCK','STANDARD_BE_TEXT','Position Lock');

Insert into FT_T_TIDX(TIDX_OID,LAST_CHG_TMS,LAST_CHG_USR_ID,TBL_INDEX_NME,TBL_ID,TBL_INDEX_TYP)
Values('POL1P001==',SYSDATE(),'P72:CSTM','FT_V_POL1_PK','POL1','P');
Insert into FT_T_TIDC(TIDC_OID,LAST_CHG_TMS,LAST_CHG_USR_ID,COL_NME,TBL_ID,TIDX_OID,COL_SQ_NUM)
Values('POL1P00101',SYSDATE(),'P72:CSTM','OVR_REF_OID','POL1','POL1P001==',1);
Insert into FT_T_XSEG(SEGMENT_ID,LAST_CHG_TMS,LAST_CHG_USR_ID,START_TMS,SEGMENT_NME,SEGMENT_DESC,SEGMENT_TYP,DUP_INSERT_IND)
Values(1000011,SYSDATE(),'P72:CSTM',SYSDATE(),'FT_V_POL1','POL1',null,null);
Insert into FT_T_XSTO(SEGMENT_ID,LAST_CHG_TMS,LAST_CHG_USR_ID,TBL_ID,PRNT_TBL_ID,TBL_CLSF_TYP)
Values(1000011,SYSDATE(),'P72:CSTM','POL1','POL1','P');

Insert into FT_T_XELM(SEGMENT_ID,LAST_CHG_TMS,LAST_CHG_USR_ID,TBL_ID,ELEMENT_NME,ELEMENT_XML_TAG,COL_NME)Values(1000011,SYSDATE(),'P72:CSTM','POL1','Override Reference ID','OVRREFOID','OVR_REF_OID');
Insert into FT_T_XELM(SEGMENT_ID,LAST_CHG_TMS,LAST_CHG_USR_ID,TBL_ID,ELEMENT_NME,ELEMENT_XML_TAG,COL_NME)Values(1000011,SYSDATE(),'P72:CSTM','POL1','Position Lock','POSITIONLOCK','POSITION_LOCK');