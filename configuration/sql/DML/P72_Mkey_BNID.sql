---BNID multiple creation
Insert into FT_O_MKEY   (TBL_ID, COL_NME, MATCH_KEY_NME, LAST_CHG_TMS, LAST_CHG_USR_ID)  SELECT  'BNID','BNCHMRK_ID_CTXT_TYP','BNID_CSTM_1',current_timestamp,'P72:CSTM' FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_O_MKEY WHERE COL_NME = 'BNCHMRK_ID_CTXT_TYP' AND MATCH_KEY_NME = 'BNID_CSTM_1');
Insert into FT_O_MKEY   (TBL_ID, COL_NME, MATCH_KEY_NME, LAST_CHG_TMS, LAST_CHG_USR_ID)  SELECT  'BNID','BNCHMRK_ID','BNID_CSTM_1',current_timestamp,'P72:CSTM' FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_O_MKEY WHERE COL_NME = 'BNCHMRK_ID' AND MATCH_KEY_NME = 'BNID_CSTM_1');
Insert into FT_O_MKEY   (TBL_ID, COL_NME, MATCH_KEY_NME, LAST_CHG_TMS, LAST_CHG_USR_ID)  SELECT  'BNID','BNCHMRK_USAGE_TYP','BNID_CSTM_1',current_timestamp,'P72:CSTM' FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_O_MKEY WHERE COL_NME = 'BNCHMRK_USAGE_TYP' AND MATCH_KEY_NME = 'BNID_CSTM_1');
