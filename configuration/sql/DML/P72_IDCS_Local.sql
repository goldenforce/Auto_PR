INSERT INTO ft_t_idcs(id_ctxt_sq_key_id, plne_org_id, prodln_id, org_id, acct_org_id, bk_id, acct_id, iss_typ_grp_oid, id_ctxt_typ, id_ctxt_sq_num, tbl_typ, last_chg_tms, last_chg_usr_id, global_uniq_ind, id_ctxt_purp_typ, acct_oid, plne_oid, id_ctxt_desc, iss_typ)
SELECT NEW_OID(), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'LOCAL', 1, 'ISID', SYSDATE(), 'GS:PSG:P72', 'S', NULL, NULL, NULL, NULL, NULL from DUAL
where not exists (select 'X' from FT_T_IDCS where ID_CTXT_TYP = 'LOCAL');

update FT_T_IDCS set global_uniq_ind ='S' , last_chg_usr_id ='GS:PSG:P72' where id_ctxt_typ in ('WPK','COMMON');