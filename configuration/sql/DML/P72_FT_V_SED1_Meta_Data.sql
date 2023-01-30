--******************************************
--******* INSERT SCRIPT FOR TABLE SED1 *****
--******************************************
DELETE from FT_T_TBDF WHERE TBL_ID = 'SED1';
DELETE from FT_T_XSTO WHERE TBL_ID = 'SED1';
DELETE from FT_T_XSEG WHERE SEGMENT_DESC = 'SED1';
DELETE from FT_T_CLMI WHERE TRGT_TBL_ID = 'SED1';
DELETE from FT_T_ETDF WHERE TBL_SYNM_ID = 'SED1';

Insert into FT_T_ETDF(LAST_CHG_TMS,LAST_CHG_USR_ID,TBL_SYNM_ID,TBL_SYNM_DDL_NME,TBL_SYNM_NME,SEGMENT_NME,PRNT_TBL_ID)Values(TO_DATE('2022-10-26 13:10:08','YYYY-MM-DD HH24:MI:SS'),'P72:CSTM','SED1','FT_V_SED1','FT_T_SED1','FT_V_SED1','ETDF');
Insert into FT_T_TBDF(TBL_ID,LAST_CHG_TMS,LAST_CHG_USR_ID,TBL_NME,TBL_DDL_NME,TBL_CLSF_TYP,TBL_SUBJECT_AREA_NME,TBL_DATA_OWNER_NME,TBL_DATA_TYP,TBL_DATA_UPD_RULE_TYP,TBL_VIEW_NME,DATA_MODL_ID,CDC_ENABLED_IND)Values('SED1',TO_DATE('2022-10-26 13:10:08','YYYY-MM-DD HH24:MI:SS'),'P72:CSTM','FT_V_SED1','FT_V_SED1','C','Custom','Custom','Client','UnRestricted','FT_V_SED1','GSDM','N');


Insert into FT_T_CLDF(TBL_ID,LAST_CHG_TMS,LAST_CHG_USR_ID,COL_NME,FLD_ID,COL_REQ_IND,DDL_DATA_TYP,COL_SQ_NUM,LOGL_NME,DDL_BASE_DATA_TYP,DDL_DATA_LEN,DDL_DATA_PREC_NUM,DDL_DATA_SCALE_NUM,DDL_DATA_DFLT_TXT,COL_VIEW_NME,INFO_TYP_NME,DSPY_CAPTION_TXT)
Values('SED1',TO_DATE('2022-10-26 13:11:21','YYYY-MM-DD HH24:MI:SS'),'P72:CSTM','INSTR_ID','00003010','Y','VARCHAR2(16)',2,'Instrument ID','CHAR',16,16,0,null,'INSTR_ID','OBJECT_IDENTIFIER-V16','Instrument ID');
Insert into FT_T_FLDF(FLD_ID,LAST_CHG_TMS,LAST_CHG_USR_ID,DDL_NME,FLD_USED_BY_TYP,FLD_NME,FLD_DATA_CL_ID)
SELECT 'SED10002',TO_DATE('2022-10-26 13:11:54','YYYY-MM-DD HH24:MI:SS'),'P72:CSTM','SEDOL_1','T','SEDOL 1 ID','ISSUEID'FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM FT_T_FLDF WHERE FLD_ID = 'SED10002');
Insert into FT_T_CLDF(TBL_ID,LAST_CHG_TMS,LAST_CHG_USR_ID,COL_NME,FLD_ID,COL_REQ_IND,DDL_DATA_TYP,COL_SQ_NUM,LOGL_NME,DDL_BASE_DATA_TYP,DDL_DATA_LEN,DDL_DATA_PREC_NUM,DDL_DATA_SCALE_NUM,DDL_DATA_DFLT_TXT,COL_VIEW_NME,INFO_TYP_NME,DSPY_CAPTION_TXT)
Values('SED1',TO_DATE('2022-10-26 13:11:54','YYYY-MM-DD HH24:MI:SS'),'P72:CSTM','SEDOL_1','SED10002','N','VARCHAR2(255)',3,'SEDOL 1 ID','VARCHAR',100,255,0,null,'SEDOL_1','STANDARD_BE_TEXT','SEDOL 1 ID');
Insert into FT_T_FLDF(FLD_ID,LAST_CHG_TMS,LAST_CHG_USR_ID,DDL_NME,FLD_USED_BY_TYP,FLD_NME,FLD_DATA_CL_ID)
SELECT 'SED10003',TO_DATE('2022-10-26 13:13:09','YYYY-MM-DD HH24:MI:SS'),'P72:CSTM','SEDOL_COUNTRY1','T','SEDOL_COUNTRY1','EXLGNME2'FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM FT_T_FLDF WHERE FLD_ID = 'SED10003');
Insert into FT_T_CLDF(TBL_ID,LAST_CHG_TMS,LAST_CHG_USR_ID,COL_NME,FLD_ID,COL_REQ_IND,DDL_DATA_TYP,COL_SQ_NUM,LOGL_NME,DDL_BASE_DATA_TYP,DDL_DATA_LEN,DDL_DATA_PREC_NUM,DDL_DATA_SCALE_NUM,DDL_DATA_DFLT_TXT,COL_VIEW_NME,INFO_TYP_NME,DSPY_CAPTION_TXT)
Values('SED1',TO_DATE('2022-10-26 13:13:09','YYYY-MM-DD HH24:MI:SS'),'P72:CSTM','SEDOL_COUNTRY1','SED10003','N','VARCHAR2(255)',4,'SEDOL_COUNTRY1','VARCHAR',255,255,0,null,'SEDOL_COUNTRY1','STANDARD_BE_TEXT','SEDOL_COUNTRY1');


Insert into FT_T_FLDF(FLD_ID,LAST_CHG_TMS,LAST_CHG_USR_ID,DDL_NME,FLD_USED_BY_TYP,FLD_NME,FLD_DATA_CL_ID)
SELECT 'SED10004',TO_DATE('2022-10-26 13:11:54','YYYY-MM-DD HH24:MI:SS'),'P72:CSTM','SEDOL_2','T','SEDOL 2 ID','ISSUEID'FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM FT_T_FLDF WHERE FLD_ID = 'SED10004');
Insert into FT_T_CLDF(TBL_ID,LAST_CHG_TMS,LAST_CHG_USR_ID,COL_NME,FLD_ID,COL_REQ_IND,DDL_DATA_TYP,COL_SQ_NUM,LOGL_NME,DDL_BASE_DATA_TYP,DDL_DATA_LEN,DDL_DATA_PREC_NUM,DDL_DATA_SCALE_NUM,DDL_DATA_DFLT_TXT,COL_VIEW_NME,INFO_TYP_NME,DSPY_CAPTION_TXT)
Values('SED1',TO_DATE('2022-10-26 13:11:54','YYYY-MM-DD HH24:MI:SS'),'P72:CSTM','SEDOL_2','SED10004','N','VARCHAR2(255)',3,'SEDOL 2 ID','VARCHAR',100,255,0,null,'SEDOL_2','STANDARD_BE_TEXT','SEDOL 2 ID');
Insert into FT_T_FLDF(FLD_ID,LAST_CHG_TMS,LAST_CHG_USR_ID,DDL_NME,FLD_USED_BY_TYP,FLD_NME,FLD_DATA_CL_ID)
SELECT 'SED10005',TO_DATE('2022-10-26 13:13:09','YYYY-MM-DD HH24:MI:SS'),'P72:CSTM','SEDOL_COUNTRY2','T','SEDOL_COUNTRY2','EXLGNME2'FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM FT_T_FLDF WHERE FLD_ID = 'SED10005');
Insert into FT_T_CLDF(TBL_ID,LAST_CHG_TMS,LAST_CHG_USR_ID,COL_NME,FLD_ID,COL_REQ_IND,DDL_DATA_TYP,COL_SQ_NUM,LOGL_NME,DDL_BASE_DATA_TYP,DDL_DATA_LEN,DDL_DATA_PREC_NUM,DDL_DATA_SCALE_NUM,DDL_DATA_DFLT_TXT,COL_VIEW_NME,INFO_TYP_NME,DSPY_CAPTION_TXT)
Values('SED1',TO_DATE('2022-10-26 13:13:09','YYYY-MM-DD HH24:MI:SS'),'P72:CSTM','SEDOL_COUNTRY2','SED10005','N','VARCHAR2(255)',4,'SEDOL_COUNTRY2','VARCHAR',255,255,0,null,'SEDOL_COUNTRY2','STANDARD_BE_TEXT','SEDOL_COUNTRY2');

Insert into FT_T_FLDF(FLD_ID,LAST_CHG_TMS,LAST_CHG_USR_ID,DDL_NME,FLD_USED_BY_TYP,FLD_NME,FLD_DATA_CL_ID)
SELECT 'SED10006',TO_DATE('2022-10-26 13:11:54','YYYY-MM-DD HH24:MI:SS'),'P72:CSTM','SEDOL_3','T','SEDOL 3 ID','ISSUEID'FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM FT_T_FLDF WHERE FLD_ID = 'SED10006');
Insert into FT_T_CLDF(TBL_ID,LAST_CHG_TMS,LAST_CHG_USR_ID,COL_NME,FLD_ID,COL_REQ_IND,DDL_DATA_TYP,COL_SQ_NUM,LOGL_NME,DDL_BASE_DATA_TYP,DDL_DATA_LEN,DDL_DATA_PREC_NUM,DDL_DATA_SCALE_NUM,DDL_DATA_DFLT_TXT,COL_VIEW_NME,INFO_TYP_NME,DSPY_CAPTION_TXT)
Values('SED1',TO_DATE('2022-10-26 13:11:54','YYYY-MM-DD HH24:MI:SS'),'P72:CSTM','SEDOL_3','SED10006','N','VARCHAR2(255)',3,'SEDOL 3 ID','VARCHAR',100,255,0,null,'SEDOL_3','STANDARD_BE_TEXT','SEDOL 3 ID');
Insert into FT_T_FLDF(FLD_ID,LAST_CHG_TMS,LAST_CHG_USR_ID,DDL_NME,FLD_USED_BY_TYP,FLD_NME,FLD_DATA_CL_ID)
SELECT 'SED10007',TO_DATE('2022-10-26 13:13:09','YYYY-MM-DD HH24:MI:SS'),'P72:CSTM','SEDOL_COUNTRY3','T','SEDOL_COUNTRY3','EXLGNME2'FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM FT_T_FLDF WHERE FLD_ID = 'SED10007');
Insert into FT_T_CLDF(TBL_ID,LAST_CHG_TMS,LAST_CHG_USR_ID,COL_NME,FLD_ID,COL_REQ_IND,DDL_DATA_TYP,COL_SQ_NUM,LOGL_NME,DDL_BASE_DATA_TYP,DDL_DATA_LEN,DDL_DATA_PREC_NUM,DDL_DATA_SCALE_NUM,DDL_DATA_DFLT_TXT,COL_VIEW_NME,INFO_TYP_NME,DSPY_CAPTION_TXT)
Values('SED1',TO_DATE('2022-10-26 13:13:09','YYYY-MM-DD HH24:MI:SS'),'P72:CSTM','SEDOL_COUNTRY3','SED10007','N','VARCHAR2(255)',4,'SEDOL_COUNTRY3','VARCHAR',255,255,0,null,'SEDOL_COUNTRY3','STANDARD_BE_TEXT','SEDOL_COUNTRY3');

Insert into FT_T_FLDF(FLD_ID,LAST_CHG_TMS,LAST_CHG_USR_ID,DDL_NME,FLD_USED_BY_TYP,FLD_NME,FLD_DATA_CL_ID)
SELECT 'SED10008',TO_DATE('2022-10-26 13:11:54','YYYY-MM-DD HH24:MI:SS'),'P72:CSTM','SEDOL_4','T','SEDOL 4 ID','ISSUEID'FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM FT_T_FLDF WHERE FLD_ID = 'SED10008');
Insert into FT_T_CLDF(TBL_ID,LAST_CHG_TMS,LAST_CHG_USR_ID,COL_NME,FLD_ID,COL_REQ_IND,DDL_DATA_TYP,COL_SQ_NUM,LOGL_NME,DDL_BASE_DATA_TYP,DDL_DATA_LEN,DDL_DATA_PREC_NUM,DDL_DATA_SCALE_NUM,DDL_DATA_DFLT_TXT,COL_VIEW_NME,INFO_TYP_NME,DSPY_CAPTION_TXT)
Values('SED1',TO_DATE('2022-10-26 13:11:54','YYYY-MM-DD HH24:MI:SS'),'P72:CSTM','SEDOL_4','SED10008','N','VARCHAR2(255)',3,'SEDOL 4 ID','VARCHAR',100,255,0,null,'SEDOL_4','STANDARD_BE_TEXT','SEDOL 4 ID');
Insert into FT_T_FLDF(FLD_ID,LAST_CHG_TMS,LAST_CHG_USR_ID,DDL_NME,FLD_USED_BY_TYP,FLD_NME,FLD_DATA_CL_ID)
SELECT 'SED10009',TO_DATE('2022-10-26 13:13:09','YYYY-MM-DD HH24:MI:SS'),'P72:CSTM','SEDOL_COUNTRY4','T','SEDOL_COUNTRY4','EXLGNME2'FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM FT_T_FLDF WHERE FLD_ID = 'SED10009');
Insert into FT_T_CLDF(TBL_ID,LAST_CHG_TMS,LAST_CHG_USR_ID,COL_NME,FLD_ID,COL_REQ_IND,DDL_DATA_TYP,COL_SQ_NUM,LOGL_NME,DDL_BASE_DATA_TYP,DDL_DATA_LEN,DDL_DATA_PREC_NUM,DDL_DATA_SCALE_NUM,DDL_DATA_DFLT_TXT,COL_VIEW_NME,INFO_TYP_NME,DSPY_CAPTION_TXT)
Values('SED1',TO_DATE('2022-10-26 13:13:09','YYYY-MM-DD HH24:MI:SS'),'P72:CSTM','SEDOL_COUNTRY4','SED10009','N','VARCHAR2(255)',4,'SEDOL_COUNTRY4','VARCHAR',255,255,0,null,'SEDOL_COUNTRY4','STANDARD_BE_TEXT','SEDOL_COUNTRY4');




Insert into FT_T_TIDX(TIDX_OID,LAST_CHG_TMS,LAST_CHG_USR_ID,TBL_INDEX_NME,TBL_ID,TBL_INDEX_TYP)Values('SED1P001==',TO_DATE('2022-10-26 13:10:08','YYYY-MM-DD HH24:MI:SS'),'P72:CSTM','FT_V_SED1_PK','SED1','P');
Insert into FT_T_TIDC(TIDC_OID,LAST_CHG_TMS,LAST_CHG_USR_ID,COL_NME,TBL_ID,TIDX_OID,COL_SQ_NUM)Values('SED1P00101',TO_DATE('2022-10-26 13:10:08','YYYY-MM-DD HH24:MI:SS'),'P72:CSTM','INSTR_ID','SED1','SED1P001==',1);

Insert into FT_T_XSEG(SEGMENT_ID,LAST_CHG_TMS,LAST_CHG_USR_ID,START_TMS,SEGMENT_NME,SEGMENT_DESC,SEGMENT_TYP,DUP_INSERT_IND)Values(1000012,TO_DATE('2022-10-26 13:13:10','YYYY-MM-DD HH24:MI:SS'),'P72:CSTM',TO_DATE('2022-10-26 13:13:10','YYYY-MM-DD HH24:MI:SS'),'FT_V_SED1','SED1',null,null);
Insert into FT_T_XSTO(SEGMENT_ID,LAST_CHG_TMS,LAST_CHG_USR_ID,TBL_ID,PRNT_TBL_ID,TBL_CLSF_TYP)Values(1000012,TO_DATE('2022-10-26 13:13:10','YYYY-MM-DD HH24:MI:SS'),'P72:CSTM','SED1','SED1','P');


Insert into FT_T_XELM(SEGMENT_ID,LAST_CHG_TMS,LAST_CHG_USR_ID,TBL_ID,ELEMENT_NME,ELEMENT_XML_TAG,COL_NME)
Values(1000012,TO_DATE('2022-10-26 13:13:10','YYYY-MM-DD HH24:MI:SS'),'P72:CSTM','SED1','Instrument ID','INSTRID','INSTR_ID');
Insert into FT_T_XELM(SEGMENT_ID,LAST_CHG_TMS,LAST_CHG_USR_ID,TBL_ID,ELEMENT_NME,ELEMENT_XML_TAG,COL_NME)
Values(1000012,TO_DATE('2022-10-26 13:13:10','YYYY-MM-DD HH24:MI:SS'),'P72:CSTM','SED1','SEDOL 1 ID','SEDOL1','SEDOL_1');
Insert into FT_T_XELM(SEGMENT_ID,LAST_CHG_TMS,LAST_CHG_USR_ID,TBL_ID,ELEMENT_NME,ELEMENT_XML_TAG,COL_NME)
Values(1000012,TO_DATE('2022-10-26 13:13:10','YYYY-MM-DD HH24:MI:SS'),'P72:CSTM','SED1','SEDOL_COUNTRY1','SEDOLCOUNTRY1','SEDOL_COUNTRY1');
Insert into FT_T_XELM(SEGMENT_ID,LAST_CHG_TMS,LAST_CHG_USR_ID,TBL_ID,ELEMENT_NME,ELEMENT_XML_TAG,COL_NME)
Values(1000012,TO_DATE('2022-10-26 13:13:10','YYYY-MM-DD HH24:MI:SS'),'P72:CSTM','SED1','SEDOL 2 ID','SEDOL2','SEDOL_2');
Insert into FT_T_XELM(SEGMENT_ID,LAST_CHG_TMS,LAST_CHG_USR_ID,TBL_ID,ELEMENT_NME,ELEMENT_XML_TAG,COL_NME)
Values(1000012,TO_DATE('2022-10-26 13:13:10','YYYY-MM-DD HH24:MI:SS'),'P72:CSTM','SED1','SEDOL_COUNTRY2','SEDOLCOUNTRY2','SEDOL_COUNTRY2');
Insert into FT_T_XELM(SEGMENT_ID,LAST_CHG_TMS,LAST_CHG_USR_ID,TBL_ID,ELEMENT_NME,ELEMENT_XML_TAG,COL_NME)
Values(1000012,TO_DATE('2022-10-26 13:13:10','YYYY-MM-DD HH24:MI:SS'),'P72:CSTM','SED1','SEDOL 3 ID','SEDOL3','SEDOL_3');
Insert into FT_T_XELM(SEGMENT_ID,LAST_CHG_TMS,LAST_CHG_USR_ID,TBL_ID,ELEMENT_NME,ELEMENT_XML_TAG,COL_NME)
Values(1000012,TO_DATE('2022-10-26 13:13:10','YYYY-MM-DD HH24:MI:SS'),'P72:CSTM','SED1','SEDOL_COUNTRY3','SEDOLCOUNTRY3','SEDOL_COUNTRY3');
Insert into FT_T_XELM(SEGMENT_ID,LAST_CHG_TMS,LAST_CHG_USR_ID,TBL_ID,ELEMENT_NME,ELEMENT_XML_TAG,COL_NME)
Values(1000012,TO_DATE('2022-10-26 13:13:10','YYYY-MM-DD HH24:MI:SS'),'P72:CSTM','SED1','SEDOL 4 ID','SEDOL4','SEDOL_4');
Insert into FT_T_XELM(SEGMENT_ID,LAST_CHG_TMS,LAST_CHG_USR_ID,TBL_ID,ELEMENT_NME,ELEMENT_XML_TAG,COL_NME)
Values(1000012,TO_DATE('2022-10-26 13:13:10','YYYY-MM-DD HH24:MI:SS'),'P72:CSTM','SED1','SEDOL_COUNTRY4','SEDOLCOUNTRY4','SEDOL_COUNTRY4');