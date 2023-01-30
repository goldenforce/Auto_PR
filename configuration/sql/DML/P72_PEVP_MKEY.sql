
INSERT INTO ft_o_mkey
(tbl_id, col_nme, match_key_nme, last_chg_tms, last_chg_usr_id)
select 'PEVP', 'PRIN_EV_DEF_ID', 'PEVP_MATCH_P72CSTM', '2008-01-16 16:04:37.000', 'P72:CSTM' from DUAL where not exists (select '1' from FT_O_MKEY where MATCH_KEY_NME  = 'PEVP_MATCH_P72CSTM');
