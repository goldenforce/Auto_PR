INSERT INTO ft_o_mkey
(tbl_id, col_nme, match_key_nme, last_chg_tms, last_chg_usr_id)
SELECT 'MUST', 'MKT_ISS_OID', 'MUST_MATCH_P72', current_timestamp, 'GS:PSG:P72' FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_o_mkey WHERE tbl_id ='MUST' and match_key_nme='MUST_MATCH_P72' and col_nme='MKT_ISS_OID');

INSERT INTO ft_o_mkey
(tbl_id, col_nme, match_key_nme, last_chg_tms, last_chg_usr_id)
SELECT 'MUST', 'STAT_DEF_ID', 'MUST_MATCH_P72', current_timestamp, 'GS:PSG:P72'  FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_o_mkey WHERE tbl_id ='MUST' and match_key_nme='MUST_MATCH_P72' and col_nme='STAT_DEF_ID');
