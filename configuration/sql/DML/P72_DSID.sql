delete from ft_t_dsid;

INSERT INTO ft_t_dsid
(dsid_oid, data_src_id, data_src_id_ctxt_typ, alt_data_src_id, start_tms, end_tms, rank_num, data_stat_typ, last_chg_tms, last_chg_usr_id, listing_based_on_id_ind, match_based_on_market_ind, iss_typ_grp_oid)
SELECT 'DSID=BBGLB', 'BB', 'BBGLOBAL', NULL, SYSDATE(), NULL, 1, NULL, SYSDATE(), 'GS:PSG:P72', 'Y', 'N', NULL
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_dsid WHERE data_src_id = 'BB' and data_src_id_ctxt_typ = 'BBGLOBAL');

INSERT INTO ft_t_dsid
(dsid_oid, data_src_id, data_src_id_ctxt_typ, alt_data_src_id, start_tms, end_tms, rank_num, data_stat_typ, last_chg_tms, last_chg_usr_id, listing_based_on_id_ind, match_based_on_market_ind, iss_typ_grp_oid)
SELECT 'DSID=BBTKR', 'BB', 'BBUNQEXH', NULL, SYSDATE(), NULL, 2, NULL, SYSDATE(), 'GS:PSG:P72', 'Y', 'N', NULL
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_dsid WHERE data_src_id = 'BB' and data_src_id_ctxt_typ = 'BBUNQEXH');

INSERT INTO ft_t_dsid
(dsid_oid, data_src_id, data_src_id_ctxt_typ, alt_data_src_id, start_tms, end_tms, rank_num, data_stat_typ, last_chg_tms, last_chg_usr_id, listing_based_on_id_ind, match_based_on_market_ind, iss_typ_grp_oid)
SELECT 'DSID===QPM', 'RFTDSP', 'QUOTEPERMID', NULL, SYSDATE(), NULL, 1, NULL, SYSDATE(), 'GS:PSG:P72', 'N', 'N', NULL
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_dsid WHERE data_src_id = 'RFTDSP' and data_src_id_ctxt_typ = 'QUOTEPERMID');

INSERT INTO ft_t_dsid
(dsid_oid, data_src_id, data_src_id_ctxt_typ, alt_data_src_id, start_tms, end_tms, rank_num, data_stat_typ, last_chg_tms, last_chg_usr_id, listing_based_on_id_ind, match_based_on_market_ind, iss_typ_grp_oid)
SELECT 'DSID===RIC', 'RFTDSP', 'RIC', NULL, SYSDATE(), NULL, 2, NULL, SYSDATE(), 'GS:PSG:P72', 'N', 'N', NULL
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_dsid WHERE data_src_id = 'RFTDSP' and data_src_id_ctxt_typ = 'RIC');


