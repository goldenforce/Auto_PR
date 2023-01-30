
--EINC_MATCH_1_P72
INSERT INTO ft_o_mkey (tbl_id, col_nme, match_key_nme, last_chg_tms, last_chg_usr_id)  
  SELECT 'EINC','DATA_SRC_ID','EINC_MATCH_1_P72',SYSDATE(),'GS:PSG:P72' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_o_mkey WHERE tbl_id = 'EINC' AND col_nme = 'DATA_SRC_ID' AND match_key_nme = 'EINC_MATCH_1_P72' );

INSERT INTO ft_o_mkey (tbl_id, col_nme, match_key_nme, last_chg_tms, last_chg_usr_id)  
  SELECT 'EINC','EXT_CL_VALUE','EINC_MATCH_1_P72',SYSDATE(),'GS:PSG:P72' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_o_mkey WHERE tbl_id = 'EINC' AND col_nme = 'EXT_CL_VALUE' AND match_key_nme = 'EINC_MATCH_1_P72' );

INSERT INTO ft_o_mkey (tbl_id, col_nme, match_key_nme, last_chg_tms, last_chg_usr_id)  
  SELECT 'EINC','INDUS_CL_SET_ID','EINC_MATCH_1_P72',SYSDATE(),'GS:PSG:P72' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_o_mkey WHERE tbl_id = 'EINC' AND col_nme = 'INDUS_CL_SET_ID' AND match_key_nme = 'EINC_MATCH_1_P72' );

INSERT INTO ft_o_mkey (tbl_id, col_nme, match_key_nme, last_chg_tms, last_chg_usr_id)  
  SELECT 'EINC','NLS_CDE','EINC_MATCH_1_P72',SYSDATE(),'GS:PSG:P72' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_o_mkey WHERE tbl_id = 'EINC' AND col_nme = 'NLS_CDE' AND match_key_nme = 'EINC_MATCH_1_P72' );

-- BNPT_CSTM_MATCH_1
INSERT INTO ft_o_mkey (tbl_id, col_nme, match_key_nme, last_chg_tms, last_chg_usr_id)  
  SELECT 'BNPT','PRNT_BNCH_OID','BNPT_CSTM_MATCH_1',SYSDATE(),'GS:PSG:P72' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_o_mkey WHERE tbl_id = 'BNPT' AND col_nme = 'PRNT_BNCH_OID' AND match_key_nme = 'BNPT_CSTM_MATCH_1' );

INSERT INTO ft_o_mkey (tbl_id, col_nme, match_key_nme, last_chg_tms, last_chg_usr_id)  
  SELECT 'BNPT','INSTR_ID','BNPT_CSTM_MATCH_1',SYSDATE(),'GS:PSG:P72' 
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_o_mkey WHERE tbl_id = 'BNPT' AND col_nme = 'INSTR_ID' AND match_key_nme = 'BNPT_CSTM_MATCH_1' );