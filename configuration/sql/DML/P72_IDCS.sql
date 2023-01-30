INSERT INTO ft_t_idcs (id_ctxt_sq_key_id, id_ctxt_typ, id_ctxt_sq_num, tbl_typ, last_chg_tms, last_chg_usr_id, global_uniq_ind)
SELECT 'IDCS000001', 'CPGLOBAL', 1, 'ISID', SYSDATE(), 'GS:PSG:P72', 'S' FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM ft_t_idcs WHERE id_ctxt_typ = 'CPGLOBAL' AND id_ctxt_sq_num = '1' AND tbl_typ = 'ISID');

INSERT INTO ft_t_idcs (id_ctxt_sq_key_id, plne_org_id, prodln_id, org_id, acct_org_id, bk_id, acct_id, iss_typ_grp_oid, id_ctxt_typ, id_ctxt_sq_num, tbl_typ, last_chg_tms, last_chg_usr_id, global_uniq_ind, id_ctxt_purp_typ, acct_oid, plne_oid, id_ctxt_desc, iss_typ)
select new_oid () , NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'GVUNDLPOSID', 1, 'ISID', SYSDATE(), 'GS:PSG:P72', 'S', NULL, NULL, NULL, NULL, null from DUAL
where not exists (select 'X' from FT_T_IDCS where id_ctxt_typ='GVUNDLPOSID' AND id_ctxt_sq_num = '1' AND tbl_typ = 'ISID');

INSERT INTO ft_t_idcs (id_ctxt_sq_key_id, plne_org_id, prodln_id, org_id, acct_org_id, bk_id, acct_id, iss_typ_grp_oid, id_ctxt_typ, id_ctxt_sq_num, tbl_typ, last_chg_tms, last_chg_usr_id, global_uniq_ind, id_ctxt_purp_typ, acct_oid, plne_oid, id_ctxt_desc, iss_typ)
select new_oid () , NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ICSMAPPING', 1, 'ISID', SYSDATE(), 'GS:PSG:P72', 'S', NULL, NULL, NULL, NULL, null from DUAL
where not exists (select 'X' from FT_T_IDCS where id_ctxt_typ='ICSMAPPING' AND id_ctxt_sq_num = '1' AND tbl_typ = 'ISID');

INSERT INTO ft_t_idcs (id_ctxt_sq_key_id, plne_org_id, prodln_id, org_id, acct_org_id, bk_id, acct_id, iss_typ_grp_oid, id_ctxt_typ, id_ctxt_sq_num, tbl_typ, last_chg_tms, last_chg_usr_id, global_uniq_ind, id_ctxt_purp_typ, acct_oid, plne_oid, id_ctxt_desc, iss_typ)
select new_oid () , NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PANORISKPOSID', 1, 'ISID', SYSDATE(), 'GS:PSG:P72', 'S', NULL, NULL, NULL, NULL, null from DUAL
where not exists (select 'X' from FT_T_IDCS where id_ctxt_typ='PANORISKPOSID' AND id_ctxt_sq_num = '1' AND tbl_typ = 'ISID');

INSERT INTO ft_t_idcs (id_ctxt_sq_key_id, plne_org_id, prodln_id, org_id, acct_org_id, bk_id, acct_id, iss_typ_grp_oid, id_ctxt_typ, id_ctxt_sq_num, tbl_typ, last_chg_tms, last_chg_usr_id, global_uniq_ind, id_ctxt_purp_typ, acct_oid, plne_oid, id_ctxt_desc, iss_typ)
select new_oid () , NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ULTUNDLPOSID', 1, 'ISID', SYSDATE(), 'GS:PSG:P72', 'S', NULL, NULL, NULL, NULL, null from DUAL
where not exists (select 'X' from FT_T_IDCS where id_ctxt_typ='ULTUNDLPOSID' AND id_ctxt_sq_num = '1' AND tbl_typ = 'ISID');